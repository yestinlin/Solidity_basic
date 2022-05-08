// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

// Normal single line comment

/// NatSpec single line comment

/*
  Normal multi-comment
*/

/**
    NatSpec multi comment
*/

// This is the first Solidity test
///@title The smart contract
///@author Justin


contract FirstContract {
    string public name = "Justin";

    ///@notice This function changes the name of the name variable
    function updateName(string memory _newName) public{
        name = _newName;
    }
}