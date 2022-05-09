// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "./MyLoop.sol";

contract NFT{
    uint256 dna;
    string name;
    constructor(string memory _name, uint256 _dna){
        name = _name;
        dna = _dna;
    }
}


contract MyImport is ERC721, MyLoop{
        NFT[] public nfts;
        string myName = "Justin";       //more gas
        bytes32 myByteName = "Justin";  //less gas 

        constructor(string memory _name, string memory _symbol) ERC721(_name,_symbol){

        }
        function addNft(string memory _name, uint256 _dna) public{
            NFT nft = new NFT(_name, _dna);
            nfts.push(nft);
        }

        function myHashName(string memory _name) public pure returns (bytes32){
                return keccak256(abi.encodePacked( _name)); 
                
                //Normally used for database and password, bytes will remain the same after hashed
        }
}