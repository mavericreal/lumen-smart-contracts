pragma solidity ^0.4.11;
import '../base/ActionManagerEnabled.sol';
import '../base/OwnerEnabled.sol';
//import '../actions/ActionAddAction.sol';

contract ActionDB is ActionManagerEnabled {

    // This is where we keep all the actions.
    mapping (bytes32 => address) public actions;
    uint public size;

    // To make sure we have an add action action, we need to auto generate
    // it as soon as we got the OWNER address.
    function setOwnerAddress(address ownerAddr) returns (bool result) {
      return super.setOwnerAddress(ownerAddr);

      /*var addaction = new ActionAddAction();
      // If this fails, then something is wrong with the add action contract.
      // Will be events logging these things in later parts.
      if(!OwnerEnabled(addaction).setOwnerAddress(ownerAddr)){
          return false;
      }
      actions["addaction"] = address(addaction);*/

    }

    function addAction(bytes32 name, address addr) returns (bool) {
        if(!isActionManager()){
            return false;
        }
        // Remember we need to set the owner address for the action to be safe -
        // or someone could use a false owner to do damage to the system.
        // Normally the Owner contract does this, but actions are never added
        // to Owner - they're instead added to this lower-level CMC.
        bool sda = OwnerEnabled(addr).setOwnerAddress(OWNER);
        if(!sda){
          return false;
        }
        actions[name] = addr;
        size++;
        return true;
    }

    function removeAction(bytes32 name) returns (bool) {
        if (actions[name] == address(0)){
            return false;
        }
        if(!isActionManager()){
            return false;
        }
        actions[name] = address(0);
        return true;
    }

}
