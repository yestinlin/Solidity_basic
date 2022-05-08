// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyModifier{

    uint256 public myNum = 0;
    bool public paused = false;
    address public owner;

    constructor () {
        owner = address(msg.sender);
    }

    modifier isNotPaused(bool _bypass) {

        if(_bypass == true){
            require(paused == false, "Contract is paused");
        }  
        
        _;
    }
    modifier onlyOwner() {  
        require(msg.sender == owner, "Not the owner");
        _;
    }
    
    function setPause() public{
        paused = true;
    }

    function addToNum() public isNotPaused(true) onlyOwner{
        
        myNum++;
    }
    function suToNum() public isNotPaused(false) onlyOwner{
        
        myNum--;
    }

}