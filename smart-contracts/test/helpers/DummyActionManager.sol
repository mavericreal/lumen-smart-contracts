pragma solidity ^0.4.11;
import '../../contracts/base/ActionManagerEnabled.sol';
import '../../contracts/database/ActionDB.sol';

contract DummyActionManager is ActionManagerEnabled {
    function DummyActionManager() {
    }

    function hasActionManagerRole() public constant returns (bool) {
        return isActionManager();
    }

    function addAction(bytes32 name, address addr) returns (bool) {
      address actionsDB = ContractProvider(OWNER).getContract("actionDB");
      return ActionDB(actionsDB).addAction(name, addr);
    }

    function removeAction(bytes32 name) returns (bool) {
      address actionsDB = ContractProvider(OWNER).getContract("actionDB");
      return ActionDB(actionsDB).removeAction(name);
    }

}
