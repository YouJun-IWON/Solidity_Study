// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Ex1 {

    uint public a = 3;
    uint public  b = 5;

    function myBlock() public returns (uint, uint){
        a = 99;
        b = 0;
        return(a, b);
    }

    function myBlcok2(uint c) public {
        a = c;
    }


    function myBlock3() public pure returns(uint age, uint weight) {
        age = 20;
        weight = 55;
    }

    function getValue(uint e) public pure returns (uint) {
        return e;
    }

    function getReference(string memory f) public pure returns (string memory){
        return f;
    }

    uint public g = 3; // 100
    uint public h = myBlock4();

    function myBlock4() public returns(uint) {
        g = 100;
        return g;
    }

}