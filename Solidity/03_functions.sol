// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{
    uint public favno;
    function setfavno(uint _favno) public{
        favno = _favno;

        // btw pure and view functions can cost gas if they are called in gas costing function
        get();
    }   

    // pure and view functions dont spend gas 

    // here view is just only to read state of blockchain and just returns value
    // we cannot modify state or do any actions in this
    function  get() public view returns (uint){
        // favno  = favno + 23; not possible
        return favno;
    }

    // In pure function we cannot read state so we cannot use state in this
    function add(uint a, uint b) public pure returns(uint){
        // return favno;   // it will give error because we are trying to access the state variable from outside
        uint c = a+b;                // but pure function does not have access to external variables
        return c;
    }

    // 0xd9145CCE52D386f254917e481eB44e9943F39138
}