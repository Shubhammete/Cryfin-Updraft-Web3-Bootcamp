
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Twitter{
    mapping (address => string) public tweets;

    function createTweet(string memory tweet) public {
        tweets[msg.sender] = tweet;
    }

    function getTweet(address owner) public view returns(string memory){
        return tweets[owner];
    }
}