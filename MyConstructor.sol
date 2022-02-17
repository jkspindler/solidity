// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity constructors
 */
contract MyConstructor {

    string public name;

    constructor(string memory _name) {
        name = _name;
    }

// Constructor function is can only be called once, automatically
// when you deploy the contract

}

contract MySecondContract is MyConstructor {
    constructor(string memory _name) MyConstructor(_name) {
    }
}
