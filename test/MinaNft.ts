import { expect } from "chai";
import { ethers } from "hardhat";

describe("Token contract", function () {
    it("Deployment should assign the ERC1155 tokens to the owner", async function () {
      const [owner, addr1] = await ethers.getSigners();
  
      const MinaNft = await ethers.getContractFactory("MinaNft");
  
      const hardhatToken = await MinaNft.deploy();
  
      const balanceTier1 = await hardhatToken.balanceOf(owner.address, ethers.BigNumber.from(1));
      const balanceTier2 = await hardhatToken.balanceOf(owner.address, ethers.BigNumber.from(2));

      expect(25000).to.equal(balanceTier1);
      expect(7000).to.equal(balanceTier2);
    });
  });