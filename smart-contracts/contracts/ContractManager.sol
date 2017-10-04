pragma solidity ^0.4.11;
import './interfaces/ContractProvider.sol';
import './database/ContractDB.sol';
import './base/OwnerEnabled.sol';

/// @title ContractManager
/// @notice This contract is used to register other contracts by name.
/// @dev Stores the contracts as entries in a doubly linked list, so that
/// the list of elements can be gotten.
contract ContractManager is ContractDB {

    address public OWNER;

    // When adding a contract.
    event AddContract(address indexed caller, bytes32 indexed name, uint16 indexed code);
    // When removing a contract.
    event RemoveContract(address indexed caller, bytes32 indexed name, uint16 indexed code);

    // Constructor
    function ContractManager() {
        OWNER = msg.sender;
    }

    function addContract(bytes32 name, address addr) returns(bool result) {
        // Only the OWNER may add, and the contract has to be OwnerEnabled and
        // return true when setting the ContractManager address.
        if (msg.sender != OWNER || !OwnerEnabled(addr).setOwnerAddress(address(this))) {
            // Access denied. Should divide these up into two maybe.
            AddContract(msg.sender, name, 403);
            return false;
        }
        // Add to contract.
        bool ae = _addElement(name, addr);
        if (ae) {
            AddContract(msg.sender, name, 201);
        } else {
            // Can't overwrite.
            AddContract(msg.sender, name, 409);
        }
        return ae;
    }

    function removeContract(bytes32 name) returns(bool result) {
        if (msg.sender != OWNER) {
            RemoveContract(msg.sender, name, 403);
            return false;
        }
        bool re = _removeElement(name);
        if (re) {
            RemoveContract(msg.sender, name, 200);
        } else {
            // Can't remove, it's already gone.
            RemoveContract(msg.sender, name, 410);
        }
        return re;
    }

    function getContract(bytes32 name) returns(address addr) {
        return list[name].contractAddress;
    }

    function remove() {
        if (msg.sender == OWNER) {
            // Finally, remove ContractManager. ContractManager will now have all the funds of the other contracts,
            // and when suiciding it will all go to the OWNER.
            selfdestruct(OWNER);
        }
    }

}
