import { Contract } from "@ethersproject/contracts";
import { ethers } from "hardhat";

describe("Variable test", function () {
  let variable: Contract;
  let deployer: any;

  before(async function () {
    const [_deployer] = await ethers.getSigners();

    deployer = _deployer;
    const Variable = await ethers.getContractFactory("Variable", deployer);
    variable = await Variable.deploy();
  });

  it("base", async function () {
    console.log("defaultValue", await variable.defaultValue());
  });

  it("address", async function () {
    console.log("addressValue", await variable.addressValue());
    console.log("defaultAddressValue", await variable.defaultAddressValue());
  });
});
