// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract Twitter2{
    mapping(address => string[]) public tweets;
    function createTweet(string memory _tweet) public{
        tweets[msg.sender].push(_tweet);
    }
    function createTweet(address _owner, uint _i) public view returns (string memory){
        return tweets[_owner][_i];
    }
    function getTweet(address _owner) public view returns (string[] memory){
        return tweets[_owner];
    }
}