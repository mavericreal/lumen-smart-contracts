pragma solidity ^0.4.11;


import '../../contracts/tokens/LumenStandardToken.sol';


// mock class using StandardToken
contract LumenStandardTokenMock is LumenStandardToken {

  function LumenStandardTokenMock(address initialAccount, uint256 initialBalance) {
    balances[initialAccount] = initialBalance;
    totalSupply = initialBalance;
  }

}
