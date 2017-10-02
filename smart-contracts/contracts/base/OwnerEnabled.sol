pragma solidity ^0.4.11;

contract OwnerEnabled {
    address public OWNER;

    function setOwnerAddress(address ownerAddr) returns (bool result) {
        // Once the owner address is set, don't allow it to be set again, except by the
        // owner contract itself.
        require(ownerAddr != address(0) && OWNER == address(0)); // Throws exception on false
        OWNER = ownerAddr;
        return true;
    }

    // Makes it so that owner is the only contract that may kill it.
    function remove(){
        if(msg.sender == OWNER){
            selfdestruct(OWNER);
        }
    }

}
