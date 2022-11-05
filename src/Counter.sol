// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;



contract Alluo {
    // First we will deposit 1000 USDC into the IbAlluo contract and
    // receive IbAlluos.
    let yourAddress= "";
    let recipientAddress="";
    let ibAlluoUSD = await ethers.getContractAt("IbAlluo", "0xC2DbaAEA2EfA47EBda3E572aa0e55B742E408BF6");
    const usdc = "0x2791Bca1f2de4661ED88A30C99A7a9449Aa84174";
    let amount = parseEther(1000);
    await ibAlluoUSD.deposit(usdc, amount);

    // SMART CONTRACT VERSION ***************

    


    // SMART CONTRACT VERSION ***************



    // Now grant permissions to the IbAlluo contract to create streams on your behalf
    // You only need to do this once for each IbAlluo contract when you first make a stream.
    let encodeData = await ibAlluoCurrent.formatPermissions();
    let superhost = await ethers.getContractAt("Superfluid", "0x3E14dC1b13c488a8d5D310918780c983bD5982E7");
    await superhost.connect(signers[1]).callAgreement(
        "0x6EeE6060f715257b970700bc2656De21dEdF074C",
        encodeData,
        "0x"
    )

    // Now create the actual flow for 1 IbAlluo per second. The last parameter is the
    // amount of IbAlluos you want to wrap into StIbAlluos. We recommend wrapping
    // your entire balance.
    let currentBalance = await ibAlluoUSD.combinedBalanceOf(yourAddress);
    // If you only want to wrap 800 IbAlluos.
    await ibAlluoUSD.createFlow(recipientAddress, parseEther("1"), parseEther("800"))
    // Or if you want to wrap your entire balance
    await ibAlluoUSD.createFlow(recipientAddress, parseEther("1"), currentBalance)

}
