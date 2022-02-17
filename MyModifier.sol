// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity modifiers
 */
contract MyModifier {
    uint256 public myNum = 0;
    bool public paused = false;
    address public owner;

    constructor () {
        owner = address(msg.sender);
    }
    
    modifier isNotPaused(bool _bypass) {
        if(_bypass == true);
        require(paused == false, "Contract is paused");
        _; // This means code executes after modifier
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not the owner");
        _; // This means code executes after modifier
    }

    function addToNum() public isNotPaused onlyOwner {
        myNum++;
    }

    function setPaused() public{
        paused = true;
    }
    function subtractFromNum() public isNotPaused onlyOwner {
        myNum--;
    }
}
