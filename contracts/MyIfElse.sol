// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract myIfElse{

    uint256 public revealState = 0;
    bool public isNowRevealed = false;
    string public status = "Not yet revealed";

    function addToRevealState() public {
        revealState++;
    }

    function isRevealed() public {
        if(revealState >= 5){
            isNowRevealed = true;
            status = "Is revealed!";
        } 
        else {
            status = "Nope still not revealed";
        }
    }

}