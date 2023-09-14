import { Contract } from "@ethersproject/contracts";
import { ethers } from "hardhat";

describe("Variable test", function () {
  let function1: Contract;
  let deployer: any;

  before(async function () {
    const [_deployer] = await ethers.getSigners();

    deployer = _deployer;
    const Variable = await ethers.getContractFactory("Function", deployer);
    function1 = await Variable.deploy();
  });

  it("base", async function () {
    await function1.stateValue();
    await function1.function1();
  });
});
