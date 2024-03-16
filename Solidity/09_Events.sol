// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract demo {
    // Events is something like notifications in blockchain to update UI
    // indexed caches the index of data so it can filter it faster as we need to filter events on network
    event EventName(uint256 indexed data1, string data2);
    function rand(uint data1, string memory data2) public {
        emit EventName(data1, data2);
    }
}


// Event example

contract EventExample {
    // 1️⃣ Add an event called "NewUserRegistered" with 2 arguments
    // 👉 user as address type
    // 👉 username as string type
    // CODE HERE 👇

    event NewUserRegistered(address indexed user, string username);
    
    struct User {
        string username;
        uint256 age;
    }
    
    mapping(address => User) public users;
    
    function registerUser(string memory _username, uint256 _age) public {
        User storage newUser = users[msg.sender];
        newUser.username = _username;
        newUser.age = _age;
        
        // 2️⃣ Emit the event with msg.sender and username as the inputs
        // CODE HERE 👇
        emit NewUserRegistered(msg.sender, _username);
    }
}

