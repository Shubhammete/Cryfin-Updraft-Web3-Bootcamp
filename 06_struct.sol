// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract demo{
    struct Car{
        string model;
        uint year;
        string color;
    }

    Car[] public cars;
    
    function createCar(string memory name,uint year,string memory color) public {
        Car memory newCar = Car({
            model : name,
            year: year,
            color : color
        });

        cars.push(newCar);
    }
}