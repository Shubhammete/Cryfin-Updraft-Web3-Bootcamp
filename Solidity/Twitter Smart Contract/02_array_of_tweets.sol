// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Twitter{
    mapping (address => string[]) public tweets;


    function createTweet(string memory tweet) public {
        tweets[msg.sender].push(tweet);
    }

    function getTweet(address owner, uint i) public view returns(string memory){
        return tweets[owner][i];
    }

    function getAllTweets(address owner) public view returns(string[] memory){
        return tweets[owner];
    }
}