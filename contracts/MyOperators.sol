// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract operactor {
    
    uint8 a = 1;
    uint8 b =2;
    uint8 c =3;
    uint8 newValue;
    bool myBool = false;

    /// @notice (+ , -, *, /, %, ++, --)
    function example_1() public{
        a * b + c;
        a++;
        b--;
    }
    ///@notice (=, +=, -=, *=, /=, %=)
    function example_2() public{
        newValue = a * b + c;
        b = b * c;
        b *= c;
    }
    ///@notice (==, !=, <, <=, >, >=)
    function example_3() public{
        
    }
    // @notice (!, &&,||)
    function example_4() public{
        
    }
    //@notice (? A:B)
    function example_5() public view{
        uint8 result;
        result = a < b ? 100 : 50;
    }
}