pragma solidity ^0.4.11;
import '../../contracts/actions/Action.sol';
import '../../contracts/ContractManager.sol';

contract DummyActionMock is Action {

    // When adding a contract.
    event AddNewContract(address indexed caller, bytes32 indexed name, uint16 indexed code);


    function DummyActionMock() {
    }

    function execute(bytes32 name, address addr) returns (bool){
        /*if(!isActionManager()){
            return false;
        }*/
        AddNewContract(msg.sender, name, 200);
        ContractManager contractManager = ContractManager(OWNER);
        return contractManager.addContract(name, addr);
    }
}
