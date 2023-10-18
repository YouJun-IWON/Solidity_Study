// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract test {
    enum ActionChoices { GoLeft, GoRight, GoStraight, SitStill }
    ActionChoices choice;

    ActionChoices constant defaultChoice = ActionChoices.GoStraight;

    function setGoStraight() public {
        choice = ActionChoices.GoStraight;
    }

    // The enumeration is not part of the ABI, so it is the signature of "getChoice".
    // It automatically changes to "getChoice() return(uint8)".
    
        function getChoice() public view returns (ActionChoices){
            return choice;
        }

        function getDefaultChoice() public pure returns (uint) {
            return uint(defaultChoice);
        }
}