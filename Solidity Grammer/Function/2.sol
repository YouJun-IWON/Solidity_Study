// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex2 {
     
     function myBlock(string memory str) public pure returns (uint, string memory, bytes memory) {
        uint num = 99;
        bytes memory byt = hex"01";
        return(num, str, byt); // 99 , wef, 0x01
     }

     function myBlock2(string memory str) external pure returns (string memory) { 
        return str; // external => calldata or memory (Reference type only)
     }
}