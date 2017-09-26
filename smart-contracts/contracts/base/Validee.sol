pragma solidity ^0.4.11;
import '../interfaces/Validator.sol';
import '../interfaces/ContractProvider.sol';
import './OwnerEnabled.sol';

contract Validee is OwnerEnabled{
    // Makes it easier to check that action manager is the caller.
    function validate() internal constant returns (bool) {
        if(OWNER != 0x0){
            address am = ContractProvider(OWNER).contracts("actions");
            if(am == 0x0){
              return false;
            }
            return Validator(am).validate(msg.sender);
        }
        return false;
    }
}
