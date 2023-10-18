// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Array {
    uint[] public arr;

    function test() public {
        arr = [1,2 ,3, 4, 5];
    }
}