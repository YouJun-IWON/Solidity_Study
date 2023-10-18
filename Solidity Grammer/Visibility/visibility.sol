// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract visibility {
    uint a = 5; // default : internal 
    uint public pub = 2; // getter 
    uint public constant c = 5; // getter
    uint private pri = 24;
    uint internal inter = 3;
    // uint external ext = 4;

    function funPub() public view returns(uint, uint, uint) { // getter
        return(pub, pri, inter); // 2 24 3
    }

    function funPriv() private view returns(uint, uint, uint) {
        return(pub, pri, inter);
    }

    function funInter() internal view returns(uint, uint, uint) {
        return(pub, pri, inter);
    }

    function funExt() external  view returns(uint, uint, uint) { // getter
        return(pub, pri, inter); // 2 24 3
    }


}