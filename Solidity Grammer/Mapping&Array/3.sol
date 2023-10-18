// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3]; 

    uint[10] public myFixedSizeArr; // 0

    function get(uint i) public view returns (uint) {
        return  arr[i];
    }

    function get() public view returns (uint[] memory) {
        return  arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // The length of the array does not change.
        // Reset the index value to the default value.
        // 0
        
        delete arr[index];
    }

    function examples() external pure {
        uint[] memory a = new uint[](5); // size is 5
    }
}