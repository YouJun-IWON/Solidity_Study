// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Constants {
    // coding convension to uppercase constant variables
    address public constant MY_ADDRESS = 0x0000000000000000000000000000000000000000;
    uint public constant MY_UINT = 123;
    string public constant name = "TEST token";
    uint public constant decimals = 18;
    uint public constant INITIAL_SUPPLY = 1000 * 10 ** decimals;
    // INITIAL_SUPPLY = 1000.000000000000000000 (Use up to 18 decimal places)

    string constant test = "You can not see this";
    // If there is no 'public' mark, you cannot see the text.
}