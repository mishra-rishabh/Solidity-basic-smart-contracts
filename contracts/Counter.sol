// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13 ;

contract Counter {
    uint public countVar ;

    // function to fetch the countVar value
    function getCounterVal() public view returns ( uint ) {
        return countVar ;
    }

    // function to increase value of countVar by 1
    function incrementCounterVal() public {
        countVar += 1 ;
    }

    // function to decrease value of countVar by 1
    function decrementCounterVal() public {
        countVar -= 1 ;
        
        /*
            note: this function will fail if the countVar is already 0
        */
    }
}