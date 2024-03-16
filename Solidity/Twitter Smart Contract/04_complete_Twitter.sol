// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Twitter {
    
    address public owner;
    uint MAX_LENGTH = 280;
    struct Tweet {
        uint id;
        address author;
        string content;
        uint timeStamp;
        uint likes;
    }

    event createTweetEvent(uint id, address author, string content, uint timestamp);

    constructor() {
        owner = msg.sender;
    }
    mapping(address => Tweet[]) public tweets;

    modifier CanchangeLength() {
        require(owner == msg.sender, "You are not owner of contract");
        _;
    }

    function changeLength(uint newLenght) public CanchangeLength {
        MAX_LENGTH = newLenght;
    }

    function createTweet(string memory tweet) public {
        require(bytes(tweet).length <= MAX_LENGTH, "Character Limit Execeded");
        Tweet memory newtweet = Tweet({
            id: tweets[msg.sender].length,
            author: msg.sender,
            content: tweet,
            timeStamp: block.timestamp,
            likes: 0
        });

        tweets[msg.sender].push(newtweet);
    }

    function like(address author, uint id) external {
        require(tweets[author][id].id == id, "Tweet does not exists");
        tweets[author][id].likes++;
    }

    function dislike(address author, uint id) external {
        require(tweets[author][id].id == id, "Tweet does not exists");
        require(tweets[author][id].likes > 0, "Tweet has no likes");
        tweets[author][id].likes--;
    }

    function getTweet(
        address newowner,
        uint index
    ) public view returns (Tweet memory) {
        return tweets[newowner][index];
    }

    function getTweets(address newowner) public view returns (Tweet[] memory) {
        return tweets[newowner];
    }
}
