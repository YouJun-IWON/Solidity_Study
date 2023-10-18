// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// Special reference type that can only be used in the storage data area
// Can only be declared as a state variable or storage reference type

// HashTable > Mapping is storing the value corresponding to the key value.
// When declaring HashTable, you must declare the types of keys and values.

contract Ex_1{
    
    mapping(address => uint) public balances;

    

    function addMapping(address _key, uint _amount) public {
        balances[_key] = _amount;
    }

    function getMapping(address _key) public view returns(uint) {
        return balances[_key];
    }

    function deleteMapping(address _key) public {
        delete(balances[_key]);
    }

       function deleteMapping2(address _key) public {
        balances[_key] = 0;
    }

    mapping(address => mapping(address => bool)) public isFriend;

    function example() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        uint bal2 = balances[address(1)]; // 0

        balances[msg.sender] += 456; // 123 + 456

        // delete balances[msg.sender]; // 0

        isFriend[msg.sender] [address(this)] = true;


    }

}