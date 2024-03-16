// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
// pragma solidity >=0.8.20 <0.9.0;

contract SimpleStorage{
    // data types
    // public here is to show the data to transcation by default it is at internal mode
    uint internal privateData;
    uint public myUint;
    bool public myBool;
    string public myString;
    bytes public myByte;
}