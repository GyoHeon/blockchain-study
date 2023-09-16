// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../node_modules/hardhat/console.sol";

contract Error{
  function excuteAssert(bool isAssert) public pure {
    assert(isAssert);
  }

  function devidedByZero(uint num1, uint num2) public pure {
    num1 / num2;
  }

  function excuteRevert(uint num) public pure {
    if(num <= 0){
      revert("num is greater than 0");
    }
  }

  function excuteRequire(uint num) public pure {
    require(num > 0, "num is greater than 0");
  }
}
