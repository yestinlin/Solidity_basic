// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MYVariables{
    uint256 public num = 20;       //state variable    
    bool private paused = true;     //state variable 
    uint256 internal time = block.timestamp;     //state variable saving a global variablej

    function myFunc() public view{
        // uint256 localNum = 20;  //local variable 
        // bool locaPaused = true;   //local variable 
        // address senderAddress = msg.sender;
    }
}

contract NeedVariables is MYVariables{
    uint256 public theVariables = 100;
    uint256 public theTime = time;
}