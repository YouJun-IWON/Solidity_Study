// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Student {
    string public schoolName = "The University of Solidity";
    // not change according to UniStudent
}

contract UniStudent is Student {
    function changeSchoolName() public {
        schoolName = "The University of Blockchain";
    }

    function getSchoolName() public view returns(string memory) {
        return schoolName; 
    }
}