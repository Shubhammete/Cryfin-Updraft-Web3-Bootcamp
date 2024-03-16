// SPDX-License-Identifier: MIT
pragma  solidity ^0.8.19;

contract demo{
    address owner;
    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "You are not owner");
        _;
    }

    function only() public view onlyOwner returns(address){
        return owner;
    }
}