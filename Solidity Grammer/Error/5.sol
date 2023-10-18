// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Foo {
    address public owner;
    constructor(address _owner) {
        require(_owner != address(0), "invalid address");
        assert(_owner != 0x0000000000000000000000000000000000000001);
        owner = _owner;
    }

    function myFunc(uint x) public pure returns (string memory) {
        require(x != 0, "require failed");
        return "my func was called";
    }
} 

contract Bar {
    event Log(string message);
    event LogBytes(bytes data);

    Foo public foo;
    //The output of the decode function shows that the value of the foo variable is the address of a deployed Foo contract: 0x09Db51206dd025Ec527746b19690fDC22B483DC7.

    constructor() {
        foo = new Foo(msg.sender);
    }

    function tryCatchExternalCall(uint _i) public {
        try foo.myFunc(_i) returns (string memory result) {
            emit Log(result);
        } catch {
            emit Log("external call failed");
        }
    }

    function tryCatchNewContract(address _owner) public {
        try new Foo(_owner) returns (Foo foo) {
            emit Log("Foo created");
        } catch Error(string memory reason) {
            emit Log(reason);
        } catch (bytes memory reason) {
            emit LogBytes(reason);
    }
    }

}

