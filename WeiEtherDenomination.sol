// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13 ;

contract WeiEtherDenomination {
    /*
        * Wei is the smallest denomination of ether, like cents are to the U.S. dollar.
        
        ----------------------------------------------------------
        |               Denominations of Ether                   |
        |--------------------------------------------------------|
        | Unit name   | Wei Value    | Number of Wei             |   
        |-------------|--------------|---------------------------|
        | Wei         | 1 wei        | 1                         |
        | Kwei        | 10^3 wei     | 1,000                     |
        | Mwei        | 10^6 wei     | 1,000,000                 |
        | Gwei        | 10^9 wei     | 1,000,000,000             |
        | Twei        | 10^12 wei    | 1,000,000,000,000         |
        | Pwei        | 10^15 wei    | 1,000,000,000,000,000     |
        | Ether       | 10^18 wei    | 1,000,000,000,000,000,000 |
        ----------------------------------------------------------
    */

    uint public fiveEthers = 5 ether ;
    uint public oneWei = 1 ;

    function checkEqualityOfEther() public view returns ( bool ) {
        return ( fiveEthers == 5e18 ) ;

        // 1 ether = 10^18 wei
        // 5 ethers = 5 * ( 10^18 ) wei
    }
    
    function checkEqualityOfWei() public view returns ( bool ) {
        return ( oneWei == 1 ) ;

        // 1 wei = 1
    }
}