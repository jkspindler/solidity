// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity contract inheritance
 */

contract MyInheritance_A {
    string internal name = "Jon";
}


contract MyInheritance_B is MyInheritance_A {
    function getName() public view virtual  returns(string memory) {
        return name;
    }
}


contract MyInheritance_C is MyInheritance_B {
    function getName() public view virtual override  returns(string memory) {
        return "Jon";
    }
}
