// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import 'lib/liquidity-direction-protocol/contracts/interfaces/IIbAllu';


import { 
    ISuperfluid 
} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/superfluid/ISuperfluid.sol";

import { 
    IConstantFlowAgreementV1 
} from "@superfluid-finance/ethereum-contracts/contracts/interfaces/agreements/IConstantFlowAgreementV1.sol";

import {
    CFAv1Library
} from "@superfluid-finance/ethereum-contracts/contracts/apps/CFAv1Library.sol";

contract SomeContractWithCFAv1Library {

    using CFAv1Library for CFAv1Library.InitData;
    
    //initialize cfaV1 variable
    CFAv1Library.InitData public cfaLib;
    
    constructor(
        ISuperfluid host
    ) {
    
        //initialize InitData struct, and set equal to cfaV1
        cfaLib= CFAv1Library.InitData(
        host,
            //here, we are deriving the address of the CFA using the host contract
            IConstantFlowAgreementV1(
                address(host.getAgreementClass(
                    keccak256("org.superfluid-finance.agreements.ConstantFlowAgreement.v1")
                ))
            )
        );
        
    }
    
    //your contract code here...
}


contract HotPotato {

    // 0: Game has not been initialized
    // 1: Game is in lobby, users are joining
    // 2: Game is active
    uint8 gameState;

    address payable hardcode;

    function setGameState(uint8 _gameState) internal {
        gameState = _gameState;
    }


    function permissionSetup():

    // *** SUPERFLUID LOGIC ***

    function initStream() public {
        // initialize superfluid stream, send to hardcode
    }



}
