// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// Unlike functions, state variables cannot be redefined by redeclaring them in a subcontract.

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory) {
        return name;
    }
}

// Shadowing is disallowed in Solidity 0.6
// This will not compile
// contract B is A {
//  string public name = "Contract B";
// }

// Shadowing inherited state variables: How to properly redefine inherited state variables

contract C is A {
    constructor() {
        name = "Contract C";
    }
}