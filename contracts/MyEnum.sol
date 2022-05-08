// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyEnum{
    enum Rarity{
        original, //0
        rare,      //1
        high_rare    //2
    }

    Rarity public rarity;

    constructor(){
        rarity = Rarity.high_rare;
    }

    function makeRare() public {
        rarity = Rarity.rare;
    }
}