pragma solidity ^0.4.13;

import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract LumenMintableToken is MintableToken {
  string public name = "LumenMintableToken";
  string public symbol = "tLMT";
  uint256 public decimals = 18;
}
