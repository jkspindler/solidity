// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity contract calls
 */

contract MyOtherContract { // 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3
    uint256 public age = 29;

    function getAge() public view returns (uint256 _age) {
        return age;
    }
}

contract MyContractCalls {
    function getAgeFromOtherContract(address _contractAddress) public view returns (uint256) {
        MyOtherContract other = MyOtherContract(_contractAddress);
        uint256 age = other.getAge();
        return age;
    }
}
