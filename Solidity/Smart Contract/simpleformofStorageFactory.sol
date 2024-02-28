// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./simpleStorage.sol";

contract Storagefactory{

    SimpleStorage[] public listofcontracts;
    // address[] public listofAddress;

    function createContract()public{
        SimpleStorage newcontract = new SimpleStorage();
        listofcontracts.push(newcontract);
    } 
    
    function updateContract(uint256 _SimpleStorageIndex, uint256 _SimpleStorageNumber) public {
        listofcontracts[_SimpleStorageIndex].updatestate(_SimpleStorageNumber);
    }

    function showData(uint256 _SimpleStorageIndex) public view returns(uint256){
        return listofcontracts[_SimpleStorageIndex].showno();
    }
}