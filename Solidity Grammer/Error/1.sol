// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


// Error handling: assert / revert / require
// Exception handling: try / catch

// 1) require is used to verify input and conditions before execution.
// 2) revert is similar to require.
// 3) assert is used to check code that should never be false.
// 4) Save gas by using custom errors.

contract Error_0 {
    function testRequire(uint _i) public pure {
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }


    uint public num;

    function testAssert() public view {

        assert(num == 0);
    }

    // custom error
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}