// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract demo{

    // twitter metadata
    struct Tweet{
        address author;
        string content;
        uint256 timestamp;
        uint256 likes;
    }

    // map to store tweets to the corresponding user  
    mapping(address => Tweet[]) tweets;
    
    // function to create tweet and add to object
    function createTweet(string memory _content) public {
        Tweet memory newTweet = Tweet({
            author: msg.sender,
            content: _content,
            timestamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newTweet);
    }

    // function to get the tweet for corresponding user
    function showTweet(address owner,uint i) public view returns(Tweet memory){
        return tweets[owner][i];
    }

    // function to get the tweet array for specific user

    function getTweet(address owner)public view returns (Tweet[] memory){
        return tweets[owner];
}
}
