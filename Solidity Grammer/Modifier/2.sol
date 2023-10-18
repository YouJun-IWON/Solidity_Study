// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// Getter functions use view or pure when declaring.

contract Ex3 {
    
    // The View function can read the state, but it cannot modify the state.
    function myBlock(uint a) public pure returns(uint) {
        return a; 
    }

    uint public b = 4;

    // Pure function prohibits reading or modifying state.
    function myBlock2() public view returns(uint) {
        uint c = b + 5;
        return c;
    }

    // no Modifier

    uint public x = 3;

    function maBlock3() public returns (uint) { // no getter
        x = 4;
        return x;
    }
 
}