import { Contract } from "@ethersproject/contracts";
import { ethers } from "hardhat";

describe("Error test", function () {
  let error: Contract;
  let deployer: any;

  before(async function () {
    const [_deployer] = await ethers.getSigners();

    deployer = _deployer;
    const Error = await ethers.getContractFactory("Error", deployer);
    error = await Error.deploy();
  });

  it("base", async function () {
    await error.excuteAssert(false);
  });

  it("devidedByZero", async function () {
    await error.devidedByZero(3, 0);
  });
});
