// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Calculator {
    function mul(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 * _num2;
    }
     function mul(uint _num1, uint _num2, uint _num3) public pure returns(uint) {
        return _num1 * _num2 * _num3;
    }
   
}

contract Over {
   
    Calculator internal calculator = new Calculator();

     function getNumgers() public view returns(uint, uint) {
        return (calculator.mul(3, 9), calculator.mul(2,4,6));
    }
   
}