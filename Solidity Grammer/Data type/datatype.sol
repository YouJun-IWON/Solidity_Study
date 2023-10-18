// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex2_3 {
    int a; // 0
    uint b; // 0
    bool c; // false
    bytes d; // 0x
    string e; //
    address f; // 0x0000000000000000000000000000000000000000

    function assignment() public view returns(int, uint, bool, bytes memory, string memory, address) {
        return(a, b, c, d, e, f);
    }
}