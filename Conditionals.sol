// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13 ;

contract Conditionals {
    /*
        * Decision-making statements or conditional statements control the code execution
          based on certain conditions.
        * Solidity supports the following decision-making statements that can be used
          while creating contracts.
          1.    if statement
          2.    if else statement
          3.    if else-if else statement
          4.    ternary operators
    */

    // 1. if statement
    function isNum1GreaterThanNum2( uint _num1 , uint _num2 ) public pure returns ( bool ) {
        /*
            * The if statement allows the execution of a block of code if the given condition is true.
              Otherwise, it will skip that block of code.
        */
        
        bool verdict = false ; 
        
        if( _num1 > _num2 ) {
            verdict = true ;
        }

        return verdict ;
    }

    // 2. if else statement
    function isEven( uint _num ) public pure returns ( bool ) {
        /*
            * The if else statement executes a code block based on a given condition.
            * If the condition is true, it will execute the if block.
              If the condition is false, it will execute the else block.
        */

        if( _num % 2 == 0 ) {
            return true ;
        }
        else {
            return false ;
        }
    }

    // 3. if else-if else statement
    function numberType( int _num ) public pure returns (string memory ) {
        /*
            * The if else if else statement is a series of if statements where
              each if is attached with the else of the previous statement.
            * If one of the conditions is true, that statement’s block of code will be executed.
              If none of the of the conditions are true, the else block will be executed.
        */

        if( _num > 0 ) {
            return "Positive" ;
        }
        else if( _num < 0 ) {
            return "Negative" ;
        }
        else {
            return "Nmber is Zero" ;
        }

        /*
            NOTE: The function argument (_num) is of type int and not uint because uint
            does not support negative numbers but int does.
        */
    }

    // 4. ternary operators
    function ternaryOperator( uint _num1 , uint _num2 ) public pure returns ( bool ) {
        return _num1 > _num2 ? true : false ;
    }
}