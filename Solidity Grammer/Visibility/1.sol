// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex1 {
    uint private number = 0;

    function numberPlus() internal {
        number++;
    }
}

contract Ex2 is Ex1 {
    uint private number2 = 0;

    function numberP() public {
        number2++;

        numberPlus(); // Because it is specified as internal, child contracts can call it.
    }
}