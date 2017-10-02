pragma solidity ^0.4.11;
import './interfaces/ContractProvider.sol';
import './database/ActionDB.sol';
import './base/ActionManagerEnabled.sol';
import './actions/ActionAddContract.sol';

contract ActionManager is ActionManagerEnabled {
    enum ActionChoices { AddNewContract }

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

    function executeActionAddContract(bytes32 contractName, address addr) returns(bool) {
        bytes32 actionName = "actionAddContract";
        address actionDb = ContractProvider(OWNER).getContract("actionDB");
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

        bool result = ActionAddContract(actn).execute(contractName, addr);
        _log(actionName, result);
        return result;
    }

    function addAction(bytes32 name, address addr) returns (bool) {
        address actionDb = ContractProvider(OWNER).getContract("actionDB");
        if(actionDb == address(0)){
            return false;
        }
        // Only action manager can execute
        return ActionDB(actionDb).addAction(name, addr);
    }

    function removeAction(bytes32 name) returns (bool) {
        address actionDb = ContractProvider(OWNER).getContract("actionDB");
        if(actionDb == address(0)){
            return false;
        }
        if(name == "addAction"){
          return false;
        }
        // Only action manager can execute
        return ActionDB(actionDb).removeAction(name);
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
