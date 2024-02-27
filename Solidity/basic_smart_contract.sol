// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract SimpleStorage{
    // state variable
    uint256 myFavno;

    // struct to store person information
    struct Person{
        uint256 favno;
        string name;
    }

    // array to store persons
    Person[] public listofpersons;

    mapping (string => uint) public name_to_favno;

    // update state variable
    function updatestate(uint256 _favno) public {
        myFavno = _favno;
    }

    // show the state
    function showno() public view returns (uint256){
        return myFavno;
    }

    // adding the data in list and map 
    function addpeople(uint _no, string memory _name) public{
        listofpersons.push(Person(_no, _name));
        name_to_favno[_name] = _no;
    }
}
