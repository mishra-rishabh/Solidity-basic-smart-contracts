// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13 ;

contract PrimitiveDatatypes {
    /*
        1. integer types:
            a.  unsigned integers (uint): These are non negative integers. Different sizes are available.
                ------------------------------------
                | size           range             |
                |----------------------------------|
                | uint8 (min)    0 to 2 ** 8 - 1   |
                | uint16         0 to 2 ** 16 - 1  |
                | uint32         0 to 2 ** 32 - 1  |
                | ...                              |
                | ..                               |
                | .                                |
                | uint256 (max)  0 to 2 ** 256 - 1 |
                ------------------------------------
                
                NOTE: uint is same as uint256 i.e., uint is an alias for uint256

            b.  signed integers (int): These can hold negative integers. Different sizes are available.
                ------------------------------------------------
                | size              range                      |
                |----------------------------------------------|
                | int256            -2 ** 255 to 2 ** 255 - 1  |
                | int128            -2 ** 127 to 2 ** 127 - 1  |
                | int64             -2 ** 63 to 2 ** 63 - 1    |
                | ...                                          |
                | ..                                           |
                | .                                            |
                | int8              -2 ** 7 to 2 ** 7 - 1      |
                ------------------------------------------------

                Default values: uint -> 0 , int -> 0
    */
    uint public unsignedVar = 1234567890 ;
    uint8 public unsigned8 = 1 ;
    uint256 public unsigned256 = 9876543210 ;

    int public signedVar = -12121212 ;
    int8 public signed8 = -2 ;
    int256 public signed256 = 9090909090 ;

    /* 
        2.  Boolean type: Value is either false (0) or true (1)

            Default value: bool -> false
    */
    bool public iAmBoolVar = true ;

    /*
        3.  bytes type: It represents a sequence of bytes. It is of two types
            a.  fixed-size byte arrays: Like uint and int, bytes also have different sizes.
                The value types bytes1, bytes2, bytes3, …, bytes32 contain a sequence of bytes (from 1 to 32).

            b.  dynamically-size byte arrays: These are a really specific types. Basically, "bytes" and "string" are special array.
                "string" is equal to "bytes" but does not allow length or index access. The term bytes in Solidity represents a
                dynamic array of bytes. It is a shorthand for byte[].

                NOTE: The string literal is interpreted in its raw byte form when assigned to a bytes32 type.
    */
    bytes1 public b1 = 0x25 ;        // [ 00100101 ]
    bytes1 public b2 = 0xab ;        // [ 10101011 ]
    string public str1 = "solidity" ;
    bytes32 public str2 = "solidity" ;

    /*
        4.  address type: address holds a 20-byte value (size of an Ethereum address).

        Default value: address -> 0x0000000000000000000000000000000000000000
    */
    address public myAddr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c ;
}
