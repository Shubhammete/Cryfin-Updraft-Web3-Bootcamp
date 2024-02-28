// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import "./simpleStorage.sol"
// this imports whole file so if we have 4 smart contracts instead importing all we have to import only needed one
import {SimpleStorage} from "./simpleStorage.sol"; 

contract deploy{

    // SimpleStorage public simpleStorage;  -> created the object
    SimpleStorage[] public listofcontacts;  // list of smart contract addresses
    // list of addresses
    address[] public listofaddresses;

    function createContract() public {
    // this creates new contract
    // simpleStorage = new SimpleStorage();

    // here we created a new contract and store it in array of the contract and not the address[]
    SimpleStorage newcontract = new SimpleStorage();
    listofcontacts.push(newcontract);
    }


    function sfStore(uint256 _SimpleStorageIndex, uint256 _SimpleStorageNumber) public{
        // address is    like username for the smart contract
        // ABI is Application Binary Interface , it's like interface of that particular contract like here we have three public buttons so we can have three ABI i.e. ways to interact with contract


        // create the list to update simpleStorageno by passing index
        // SimpleStorage  ssContract = listofcontacts[_SimpleStorageIndex];

        // OR we can add list to address array by typecasting 
        // SimpleStorage mySimpleStorage = listofaddresses[_SimpleStorageIndex]; here we have to ype cast thos into SimpleStorage contact type
        SimpleStorage mySimpleStorage = SimpleStorage(listofaddresses[_SimpleStorageIndex]);
        // SimpleStorage(address)

        // here we use the function from simpleStorage.sol to updatestate on the list object created above
        mySimpleStorage.updatestate(_SimpleStorageNumber);
    }

    // create function to show the data at following index
    function getData(uint256 _SimpleStorageIndex) public view returns(uint256){
        // create list object
        SimpleStorage mySimpleContract = listofcontacts[_SimpleStorageIndex];

        // or you can return listofcontacts[_SimpleStorageIndex].showno( ) 
        return mySimpleContract.showno();
    }
}
