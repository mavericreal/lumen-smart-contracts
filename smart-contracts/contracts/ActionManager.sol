pragma solidity ^0.4.11;
import './interfaces/ContractProvider.sol';
import './database/ActionDB.sol';
import './base/OwnerEnabled.sol';
import './actions/ActionAddContract.sol';

contract ActionManager is OwnerEnabled {

    struct ActionLogEntry {
        address caller;
        bytes32 action;
        uint blockNumber;
        bool success;
    }

    bool LOGGING = true;

    // Adding a logger here, and not in a separate contract. This is wrong.
    // Will replace with array once that's confirmed to work with structs etc.
    uint public nextEntry = 0;
    mapping(uint => ActionLogEntry) public logEntries;

    function ActionManager() {
    }

    function execute(bytes32 actionName, bytes data) returns(bool) {
        address actionDb = ContractProvider(OWNER).getContract("actiondb");
        if (actionDb == address(0)) {
            _log(actionName, false);
            return false;
        }

        address actn = ActionDB(actionDb).actions(actionName);
        // If no action with the given name exists - cancel.
        if (actn == address(0)) {
            _log(actionName, false);
            return false;
        }

        actn.call(data);
        _log(actionName, true);
        return true;
    }

    function executeActionAddContract2(bytes32 contractName, address addr) returns(bool) {
        bytes32 action = 'actionAddContract';
        address actionDb = ContractProvider(OWNER).getContract("actiondb");
        if (actionDb == address(0)) {
            _log(action, false);
            return false;
        }

        address actn = ActionDB(actionDb).actions(action);
        // If no action with the given name exists - cancel.
        if (actn == address(0)) {
            _log(action, false);
            return false;
        }

        bool result = ActionAddContract(actn).execute(contractName, addr);
        _log(action, result);
        return result;
    }

    function addAction(bytes32 name, address addr) returns (bool) {
        address actionDb = ContractProvider(OWNER).getContract("actiondb");
        if (actionDb == address(0)){
          return false;
        }
        bool res = ActionDB(actionDb).addAction(name, addr);
        return res;
    }

    function removeAction(bytes32 name) returns (bool) {
        address actionDb = ContractProvider(OWNER).getContract("actiondb");
        if (actionDb == address(0)){
          return false;
        }
        bool res = ActionDB(actionDb).removeAction(name);
        return res;
    }

    function _log(bytes32 actionName, bool success) internal {
        // TODO check if this is really necessary in an internal function.
        if (msg.sender != address(this)) {
            return;
        }
        ActionLogEntry le = logEntries[nextEntry++];
        le.caller = msg.sender;
        le.action = actionName;
        le.success = success;
        le.blockNumber = block.number;
    }

}
