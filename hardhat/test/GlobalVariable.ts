import { Contract } from "@ethersproject/contracts";
import { ethers } from "hardhat";

describe("Variable test", function () {
  let variable: Contract;
  let deployer: any;

  before(async function () {
    const [_deployer] = await ethers.getSigners();

    deployer = _deployer;
    const Variable = await ethers.getContractFactory(
      "GlobalVariable",
      deployer
    );
    variable = await Variable.deploy();
  });

  it("base", async function () {
    console.log("1 wei", (await variable.oneWei()).toString());
    console.log("1 Gwei", (await variable.oneGwei()).toString());
    console.log("1 ether", (await variable.oneEther()).toString());
  });
});
