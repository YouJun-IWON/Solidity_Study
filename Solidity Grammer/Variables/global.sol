// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Mystorage {

    function getResult() public view returns(uint){
        return block.number; // Global Variables
    }
}