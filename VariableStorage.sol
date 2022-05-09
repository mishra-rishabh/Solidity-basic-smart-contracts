// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0 <= 0.8.13 ;

contract VariableStorage {
    /*
        * If we want to update or change or write our state variable, we need to pay fees.
        * Paying fees is required when we send transaction. So, simply we can say that we need
          to pay transaction fees while sending transaction to the blockchain.
        * Reading any state variable doesn't require any fees to be paid.
    */

    string public myName ;
    uint public myAge ;

    // This function will require transaction fees to send the transaction
    function setInfo( string memory _name , uint _age ) public {
        myName = _name ;
        myAge = _age ;
    }

    function getName() public view returns ( string memory ) {
        return myName ;
    }

    function getAge() public view returns ( uint ) {
        return myAge ;
    }

    // The above 2 getter functions won't require any fees, because we are just reading the
    // state variables and not writing or modifying them. 
}