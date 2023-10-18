// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract fs_1 {
    uint public a = 3; // state variable : External access is possible. It changes at any time.
    
    function myfin1() external view returns(uint, uint){
        uint b = 4; // local variable => There is no need to set visibility specifiers.
        return (a, b);
    }
}