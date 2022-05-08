// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyStrut {

    struct NFT{
        string name;
        uint256 dna;
    }
    
    NFT[] public nftList;

    function addNFT(string memory _name, uint256 _dna) public {
        // NFT memory newNFT;
        // newNFT.name = _name;
        // newNFT.dna = _dna;
        NFT memory newNFT = NFT(_name,_dna);
        nftList.push(newNFT);
    }

    // function addNFTs(NFT[] calldata _nfts) public {
       
    //     nftList = _nfts;
    // }
    
    // function memoryTest(string memory _exampleString) public returns (string memory) {
    //     _exampleString = "example";  // You can modify memory
    //     string memory newString = _exampleString;  // You can use memory within a function's logic
    //     return newString;  // You can return memory
    // }
    
    // function calldataTest(string calldata _exampleString) external returns (string memory) {
    //     // cannot modify _exampleString
    //     // but can return it
    //     return _exampleString;
    // }

    function editNFTStorage(uint256 _index, string memory _name) public {
        NFT storage nftToBeUpdated = nftList[_index];
        nftToBeUpdated.name = _name;

    }
    function editNFTMemory(uint256 _index, string memory _name) public {
        NFT memory nftToBeUpdated = nftList[_index];
        nftToBeUpdated.name = _name;
        nftList[_index] = nftToBeUpdated;

    }

    function showNFTName(uint256 _index) public view returns(string memory){
        return nftList[_index].name;
    }
} 