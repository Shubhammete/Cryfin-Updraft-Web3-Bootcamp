// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{
    uint public favno;

// map
    mapping (string => uint) public map;
     
 function addpeople(uint _no, string memory _name) public{
        map[_name] = _no;
    }
    
}