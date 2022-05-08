// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13 ;

contract Variables {
    /*
        Solidity has 3 types of variables
        1.  Local: Variables whose values are present till function is executing and values are not stored on the blockchain.
        2.  State: Variables whose values are permanently stored in a contract storage and values are stored on the blockchain.
        3.  Global: Special variables exists in the global namespace used to get information about the blockchain.
    */

    // state variables
    uint public num = 1234 ;
    string public greet = "namaste" ;

    function justAFunction() public pure returns ( uint ) {
        uint a = 10 ;       
        uint b = 5 ; 
        uint c = a + b ;

        return c ;

        // a , b , c are local variables
    }

    // global variables
    address public minerAddr = block.coinbase ;
    address public sender = msg.sender ;
    uint public blockDifficulty = block.difficulty ;
    uint public timestamp = block.timestamp ;

    // Variables are made public because solidity implicitly defines a getter() method for public variables.
    // It is not recommended to make every variable as public. 
}