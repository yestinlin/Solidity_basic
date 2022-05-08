// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract MyErrorsAndChecks{

    uint256 public maxAmount = 100;
    
    function updateMax() public {
        maxAmount = 50;
    }

    function myFunct(uint256 _x, uint256 _y) public view returns (uint256 xy){
        require(_x < _y, "X is bigger than Y");
        checkMax();
        return _x + _y;
    } 

    function myPureRevert(uint256 _x, uint256 _y) public pure returns (uint256 xy){
        //logic

        if(_x == 10){
            revert("X is 10");
        }
        return _x + _y;
    } 
    function checkMax() internal view{
        assert(maxAmount == 100);
    }

}