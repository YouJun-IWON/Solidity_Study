// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// abstract function : A function that declares only the function name, input parameters, and output parameters, but has no content.

// abstract contract = abstract fucntion + non abstract function 

abstract contract Animal {
    function eat() public virtual returns (bytes32); 
}

// contract Lion is Animal {
//     function eat() public view returns (string memory) {
//         return "Eat";
//     }
// }