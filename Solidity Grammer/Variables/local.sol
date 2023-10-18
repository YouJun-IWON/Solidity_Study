// Local Variable

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// View function : can be declared view in which case they promise not to modify the state. 
// they can view the state variable but can't modify it

contract MyStorage {

    // Function definition showing declaration
    // Scope of Local Variable

    function getResult() public pure returns(uint){

        // Initializing Local Variable
        uint local_var1 = 1;
        uint local_var2 = 2;
        uint result = local_var1 + local_var2;

        // Access Local Variable
        return result;
    }
}

// Pure function : declares that no state variable will be changed or read.
