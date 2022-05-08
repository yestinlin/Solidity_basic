// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyTpes{
    bool public myBool = false;
    
    //unassigned integer

    uint256 public myUint256 = 51325314;
    //uint32
    //uint16
    uint8 public myUint8 = 255; //0-255 | 2 ** 8 - 1 = 255

    //assigned integer
    int256 private myInt256 = -51325314;
    //int32
    //int16
    int8 internal myInt8 = -127; //0-255 | 2 ** 8 - 1 = 255


    address public myAddress = address(0xb178E63464Eb3157459e346538551669C3Fbc119);


}