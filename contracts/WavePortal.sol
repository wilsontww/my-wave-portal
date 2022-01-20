// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint) public addressWaves;

    constructor() {
        console.log("This is my first smart contract...only kinda smart");
    }

    function wave() public {
        totalWaves += 1;
        addressWaves[msg.sender] = addressWaves[msg.sender] + 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getAddressWaves() public view returns (uint256) {
        console.log("%s has waved %d times", msg.sender, addressWaves[msg.sender]);
        return addressWaves[msg.sender];
    }
}