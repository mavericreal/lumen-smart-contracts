pragma solidity ^0.4.11;
import './Action.sol';
//import '../base/Validee.sol';
import '../ContractManager.sol';

// Add contract.
contract ActionAddContract is Action {

    function execute(bytes32 name, address addr) returns (bool) {
        /*if(!isActionManager()){
            return false;
        }*/
        ContractManager manager = ContractManager(OWNER);
        return manager.addContract(name, addr);
    }

}
