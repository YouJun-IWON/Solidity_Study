// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract St1 {
    // state variable : Stored on blockchain. External declaration possible
    string public a = "Hello solidity";
    uint public b = 1;

    function getSt() public view {
        // Warning: Unused local variable.

        // local variable : Not stored on blockchain. Internal declaration possible.
        // uint c = 2;

        // Assign the variable to the `_` placeholder:

        // global variable 
        // uint d = block.timestamp;
        // address e = msg.sender;
    }

}