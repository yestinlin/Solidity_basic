// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


//0x417Bf7C9dc415FEEb693B6FE313d1186C692600F
contract MyOtherContract{

    uint256 public age = 29;

    function getAge() public view returns (uint256 ){
        return age;
    }

}

contract MyContractCalls{

    function getAgeFromOtherContract(address _contractAddress) public view returns(uint256){
        MyOtherContract other = MyOtherContract(_contractAddress);
        uint256 age = other.getAge();
        return age;
    }

}