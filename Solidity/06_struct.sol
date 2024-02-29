// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract demo{

    // struct of Car
    struct Car{
        string model;
        uint year;
        string color;
    }

    // arr of struct data type
    Car[] public cars;
    
    // function to create new Car struct  and add it in the array
    function createCar(string memory name,uint year,string memory color) public {
        Car memory newCar = Car({
            model : name,
            year: year,
            color : color
        });

        cars.push(newCar);
    }
}