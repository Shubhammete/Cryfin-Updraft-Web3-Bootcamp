// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Twitter {

    // address of owner
    address public owner;

    // max length of tweet
    uint MAX_LENGTH = 280;

    // structure of tweet
    struct Tweet {
        uint id;
        address author;
        string content;
        uint timeStamp;
        uint likes;
    }

    // event to fire when tweet is created
    event createTweetEvent(uint id, address author, string content, uint timestamp);

    // constructor to initialize owner 
    constructor() {
        owner = msg.sender;
    }

    // mapping to attach tweets to addresses
    mapping(address => Tweet[]) public tweets;

    // modifier to change length of tweet
    modifier CanchangeLength() {
        require(owner == msg.sender, "You are not owner of contract");
        _;
    }

    // function to change length of tweet
    function changeLength(uint newLenght) public CanchangeLength {
        MAX_LENGTH = newLenght;
    }

    // function to make a new tweet and add to mapping
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

    // function to like tweet
    function like(address author, uint id) external {
        require(tweets[author][id].id == id, "Tweet does not exists");
        tweets[author][id].likes++;
    }

    // function to dislike tweet
    function dislike(address author, uint id) external {
        require(tweets[author][id].id == id, "Tweet does not exists");
        require(tweets[author][id].likes > 0, "Tweet has no likes");
        tweets[author][id].likes--;
    }

    // function to get tweet
    function getTweet(
        address newowner,
        uint index
    ) public view returns (Tweet memory) {
        return tweets[newowner][index];
    }

    // function to get all tweets of user
    function getTweets(address newowner) public view returns (Tweet[] memory) {
        return tweets[newowner];
    }
}
