// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Myfunction{

    uint256 myUint = 42;
    string myString = "Daniel";
    bool myBool = true;
    uint256[] myArr = [3,3,3];


    function myPureFunct(uint256 _x, uint256 _y) public pure returns (uint256 result){
        return _x + _y;
    } 

    function myViewFunct() internal view returns (string memory){
        return myString;
    }
    function myUpdateFunct() public returns (string memory){
        myString = "Justin";
        string memory savedString = myViewFunct();
        return savedString;
    }
    function myReturnsFunct() external view returns (uint256, string memory, bool, uint256[] memory){
        return (myUint, myString, myBool, myArr);
    }
    function myNoReturnsFunct() external {
        myBool = false;
    }
}