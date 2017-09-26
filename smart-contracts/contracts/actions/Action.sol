pragma solidity ^0.4.11;
import '../base/ActionManagerEnabled.sol';
import '../base/Validee.sol';

contract Action is ActionManagerEnabled, Validee {
  // Note auto accessor.
  uint8 public permission;

  function setPermission(uint8 permVal) returns (bool) {
    if(!validate()){
      return false;
    }
    permission = permVal;
  }
}
