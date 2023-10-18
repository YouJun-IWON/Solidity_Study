// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// Pay transaction costs with gas.
// Transaction requests with higher gas prices are processed first
// Refund unused gas

contract Gas_1 {
    uint public i = 0;

     // If all the sending gas is used, the transaction will fail
     // state change canceled
     // Used gas is not refunded

    function forever() public {
       // Run loop until all gas is used up
         // and the transaction fails
        while (true) {
            i += 1;
        }
    }
}

// Gas limit: Maximum gas usage set by the user
// block gas limit: Maximum amount of gas allowed for a block - set by the network