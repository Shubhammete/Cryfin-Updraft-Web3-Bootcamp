// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{
    uint public favno;

    // array in solidity
    uint[] array = [1,2];

    // struct
    struct Person{
        uint no;
        string name;
    }

    // object
    Person public shubh = Person(1,"Shubh");
    // more specific data passing
    Person public newShubh = Person({no:8,name:"Kunal"});


    Person[] public listofPeople;

    function addpeople(uint _no, string memory _name) public{
        listofPeople.push(Person(_no,_name));
    }

    // memory is temporary variable which can be modified and is deleted after function call is executed
    //  calldata - constant variable which cannot be modified and is same as memory
    //   storage - variables that are declared outside of the functions but inside contracts they remain even after execution but not deleted after execution of the function btw we cannot pass it in args but used to create objs inside function
    

}