// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Function{
  uint public stateValue = 10;

  function function1() public {
    uint localValue = 30;
    console.log(localValue, stateValue);
  }
}
