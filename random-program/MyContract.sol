//  SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    // State Variable 
    int256 public myInt = 1; 
    int8 public myInt8 = 1;
    uint public myUint = 1;  // store in blochchain
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    // Strings "my cat looks like a dog"
    string public myString = "Hello, World!";
    bytes32 public myBytes32 = "Hello, World!";

    address public myAddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;

    struct  MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello, World!");

    // Local Variable
    function getValur() public pure returns(uint) {
        uint value = 1;
        // value = value + 1;
        return value;
    }
}