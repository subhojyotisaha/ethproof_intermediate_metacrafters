//SPDX-License-Indentifier: MIT

pragma solidity ^0.8.17;

contract Functions{

    string[] fruits = ["banana", "apple", "orange", "strawberry", "mango"];
    
    function getAllFruits() public view returns(string[] memory){
        return fruits;
    }

    function concatenate(string memory a, string memory b) public pure returns(string memory){
        return string.concat(a,b);
    }

    function donate() public payable{
        uint minDeposit = 2 ether;
        require(msg.value >= minDeposit, "You need to deposit minimum 2 Ether");
    }
}