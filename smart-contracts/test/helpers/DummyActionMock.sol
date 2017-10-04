pragma solidity ^0.4.11;
import '../../contracts/actions/Action.sol';

contract DummyActionMock is Action {

    function DummyActionMock() {
    }

    function execute(bytes32 name, address addr) returns (bool){
        return true;
    }
}
