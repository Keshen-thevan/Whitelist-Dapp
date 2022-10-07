//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist{
    uint public maxWhitelistedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint8 public numAddressesWhitelisted;

    constructor(uint8 _maxWhitelistedAddress){
        maxWhitelistedAddresses = _maxWhitelistedAddress;
    }

    function addAnotherAddressToWhitelist() public {
        require(numAddressesWhitelisted < maxWhitelistedAddresses, "Cant add more addresses, limit reached");
        require(!whitelistedAddresses[msg.sender], "Sender has already been whitelisted");
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1;
    }
}
