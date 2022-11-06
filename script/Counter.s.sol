pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/HotPotato.sol";

contract MyScript is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        ISuperfluid superflu = ISuperfluid(0xEB796bdb90fFA0f28255275e16936D25d3418603);
        hot = new HotPotato(superflu);

        vm.stopBroadcast();
    }
}
