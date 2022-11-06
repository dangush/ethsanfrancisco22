// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../../src/HotPotato.sol";

contract CounterTest is Test {
    HotPotato public hot;
    
    function setUp() public {
        hot = new HotPotato();
    }

    function testIncrement() public {
    }

    function testSetNumber(uint256 x) public {
    }
}
