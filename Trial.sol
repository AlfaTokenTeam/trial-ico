pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Trial is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Trial(address _owner)  UpgradeableToken(_owner) {
    name = "Trial";
    symbol = "tri";
    totalSupply = 500000000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}