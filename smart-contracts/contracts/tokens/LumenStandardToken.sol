pragma solidity ^0.4.13;

import 'zeppelin-solidity/contracts/token/StandardToken.sol';

contract LumenStandardToken is StandardToken {
  string public name = "LumenStandardToken";
  string public symbol = "tLST";
  uint public decimals = 2;
  uint public INITIAL_SUPPLY = 12000;
}
