pragma solidity ^0.4.11;
import './Action.sol';
//import '../base/Validee.sol';

// Add contract.
contract ActionAddContract is Action {

    function execute(bytes32 name, address addr) returns (bool) {
        return true;
    }

}
