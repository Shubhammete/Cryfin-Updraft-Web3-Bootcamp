// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// import "./simpleStorage.sol"
// this imports whole file so if we have 4 smart contracts instead importing all we have to import only needed one
import {SimpleStorage} from "./simpleStorage.sol"; 

contract deploy{
    SimpleStorage public simpleStorage;
    function createContract() public {
    simpleStorage = new SimpleStorage();
    }
}
