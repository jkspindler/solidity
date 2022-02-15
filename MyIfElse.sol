// SPDX-License-Identifier: MIT

/// @author Jon K. Spindler
/// @notice My notes on solidity If/Else Statements

pragma solidity ^0.8.0;

contract MyIfElse {
    uint256 public revealState = 0;
    bool public isNowRevealed = false;
    string public status = "Not yet revealed";

    function addToRevealState() public {
        revealState++;
    }

    function isRevealed() public {
        if(revealState >= 5) {
            isNowRevealed = true;
            status = "Is now revealed!";
        } 
        else if(revealState >= 3) {
            status = "Almost done";
        }
        else {
            status = "Nope still not revealed";
        }
    }
}
