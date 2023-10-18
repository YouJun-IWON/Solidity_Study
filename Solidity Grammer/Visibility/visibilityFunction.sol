// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract visibilityFunction {

    function  funExt() external pure returns(uint) {
        return 2; // 2
    }

    function  funPri() private  pure returns(uint) {
        return 3;
    }

    function  outPutPri() public pure returns(uint) {
        return funPri(); // 3
    }


}