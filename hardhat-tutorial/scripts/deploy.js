const { ethers } = require("hardhat")

async function main(){
  const whitelistContract = await ethers.getContractFactory("Whitelist");
  const deployedWhitelistContract = await whitelistContract.deploy(10);
  await deployedWhitelistContract.deployed();
  console.log("whitelist Contract Address: ", deployedWhitelistContract.address);
}


main()
//after the function is called, you exit with a zero status, meaning its all good
  .then(() => process.exit(0))
//if there is an error, catch it and output the error
  .catch((error) => {
    console.error(error)
    process.exit(1)
  })