// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Variable{
  // base
  uint private _defaultValue;
  uint public defaultValue;
  uint constant CONSTANT_VALUE = 1234;
  uint immutable IMMUTABLE_VALUE;

  constructor() {
    IMMUTABLE_VALUE = 12345;
  }

  address public addressValue = address(1);
  address public defaultAddressValue;
}