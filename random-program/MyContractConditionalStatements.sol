// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract MyContractConditionalStatements {
    // Conditionals
    // Loops

    // if(1 is even) {
    //     console.log("number is even")
    // } else {
    //     console.log("number is odd")
    // }

    uint[] public number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i = 0; i < number.length; i++) {
            if(isEvenNumber(number[i])) {
                count++;
            }
        }

        return count;
    }

    function isEvenNumber(uint _number) public pure returns(bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns (bool) {
        return(msg.sender == owner);
    }

}