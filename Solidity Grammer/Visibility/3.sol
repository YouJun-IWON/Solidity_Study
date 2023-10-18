// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex3 {
    // Pure function : ensure that they not read or modify the state. A function can be declared as pure.
    function funExt() external pure returns(uint) {
        return 2; // 2
    }

    function outPutExt() public view returns(uint) {
        return this.funExt(); // 2
    }
}