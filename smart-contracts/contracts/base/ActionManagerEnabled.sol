pragma solidity ^0.4.11;
import '../interfaces/ContractProvider.sol';
import './OwnerEnabled.sol';

contract ActionManagerEnabled is OwnerEnabled {
    // Makes it easier to check that action manager is the caller.
    function isActionManager() internal constant returns (bool) {
        if(OWNER != address(0)){
            address am = ContractProvider(OWNER).contracts("actions");
            if (msg.sender == am){
                return true;
            }
        }
        return false;
    }
}
