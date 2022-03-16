// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    address[] senders;

    constructor() {
        console.log("Yo, I am a contract and I am smart");
    }

    function wave() public {
        totalWaves += 1;
        senders.push(msg.sender);

        console.log("%s has waved", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("\nWe have %d total waves!", totalWaves);

        console.log("The senders was: \n");
        for (uint256 i = 0; i < senders.length; i++) {
            console.logAddress(senders[i]);
        }
        return totalWaves;
    }
}
