// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// It is similar to an abstract contract, but is created using the 'interface' keyword.
// There is no function, only implementation is possible. / external Only / no constructor / no state variable / Enumeration structure possible
// All internal functions are abstract functions.

interface BankingSystem {
    function deposit (uint) external  returns (uint);
    function withdraw (uint) external  returns (bytes32);
}

// example

contract Counter {
    uint public count;
    function increment() external {
        count += 1;
    }
}

interface ICounter {
    function count() external view returns (uint);

    function increment() external;
}


contract MyContract {
    function incrementCounter(address _counter) external {
        ICounter(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return ICounter(_counter).count();
    }
}