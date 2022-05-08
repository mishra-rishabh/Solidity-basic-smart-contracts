// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0 <= 0.8.13 ;

contract Constants {
    /*
        Constant is an identifier whose value can't be changed.
        Constant identifier should be in uppercase( recommended but not necessary ).
    */

    uint public constant radius = 4 ;
    string public constant language = "solidity" ;

    // this function will throw an error because we are trying to change the value of a constant.
    // uncomment the function to see the error message
    /* function changeConstant() public {
        radius += 1 ;
    } */
}