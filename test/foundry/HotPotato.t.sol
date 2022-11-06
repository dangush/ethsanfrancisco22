// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../../src/HotPotato.sol";

contract CounterTest is Test {
    HotPotato public hot;
    
    function setUp() public {
        ISuperfluid superflu = ISuperfluid(0xEB796bdb90fFA0f28255275e16936D25d3418603);
        hot = new HotPotato(superflu);
    }

    function testGrantAuthority() public {
        // hot.cfaLib.authorizeFlowOperatorWithFullControl(address(hot), hot.alluoToken);
    }

    function testSetNumber(uint256 x) public {
    }
}
