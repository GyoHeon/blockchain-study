// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "../node_modules/hardhat/console.sol";

contract Function{
  uint public stateValue = 10;

  function function1() public view {
    uint localValue = 30;
    console.log(localValue, stateValue);
  }

  function pureFunction(uint a) public pure {
    uint b = a + 10;
    console.log(b);
  }

  function viewFunction(uint a) public view {
    uint b = a + 10 + stateValue;
    console.log(b);
  }

  function getDoubleA(uint _a) public pure returns(uint){
    uint a = _a;
    return a;
  }

  function getDoubleAReturn(uint _a) public pure returns(uint a){
    a = _a;
  }

  function getDouble(uint _a, uint _b) public pure returns(uint a, uint b){
    a = _a;
    b = _b;
  }

  function printDouble() public pure {
    (uint a, uint b) = getDouble(10, 20);

    console.log(a, b);
  }

  function getRef(bytes memory a) public pure returns(string memory, bytes memory) {
    string memory s = 'hello';

    return (s, a);
  }

  function getRefExternal(string calldata a) external pure returns (string memory) {
    return a;
  }
}
