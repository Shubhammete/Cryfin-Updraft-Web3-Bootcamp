// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// contract is like a class in solidity where all data and functions reside
contract SimpleStorage{
    uint public favno;

    // function here is public so to access by external body or can be interacted
    function setfavno(uint _favno) public{
        favno = _favno;
    }   
}