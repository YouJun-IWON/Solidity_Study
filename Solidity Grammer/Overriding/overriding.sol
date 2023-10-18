// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Student {
    function major() public pure virtual returns(string memory) {
    }
}

contract MathStudent is Student {
    function major() public pure override returns(string memory){
        return "Math";
    }
}
