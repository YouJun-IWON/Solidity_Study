// State Variable

// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.0 < 0.9.0;

contract SolidityTest {
    uint storedData; // State Variable
    constructor() { // Only one constructor is specified.
        storedData = 10; // Use State Variable 
    }
}