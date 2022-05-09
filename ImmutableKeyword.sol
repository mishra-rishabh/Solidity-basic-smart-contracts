// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0 <= 0.8.13 ;

contract ImmutableKeyword {
    /*
        * Variables declared as immutable are a bit less restricted than those declared as constant.
        * The the immutable keyword is for state variables.
        * Immutable state variables can only be assigned during contract creation, but will remain constant
          throughout the life-time of a deployed contract.
        * Immutable variables are like constants. Values of immutable variables can be set inside the
          constructor but cannot be modified afterwards.
    */
    uint public immutable anyNumber ;
    address public immutable senderAddr ;

    constructor( uint _anyNum ) public {
      anyNumber = _anyNum ;
      senderAddr = msg.sender ;
    }


    /* function assignValues() public {
      anyNumber = 10 ;

      // This function will throw an error. Uncomment this function to see the error message.
    } */
}