// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract ArtStudent {
    uint private schoolHours;
    constructor(uint _schoolHours) {
        schoolHours = _schoolHours;
    }

    function time() public virtual returns(uint) {
        return 5;
    }
}

contract PartTimer {
    uint private workingHours;
    constructor(uint _workingHours){
        workingHours = _workingHours;
    }
    function time() public  virtual  returns (uint) {
        return workingHours;
    }
}

contract Alice is  PartTimer(6), ArtStudent(5) { // The contract behind it becomes super.
    function time() public override (PartTimer, ArtStudent) returns (uint) {
        return super.time();
    }
}