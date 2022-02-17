// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity payable functions
 */

contract MyPayable {

    address payable public myAddress; 

    constructor() payable {
        myAddress = payable(msg.sender);
        // When assigning, need to cast into Payable
    }

    function deposit() public payable {}

    // if something received ether it needs to be payable
    
    function getBalance() public view returns (uint256) {
        uint256 amount = address(this).balance;
        return amount;
    }

    function transferEth(address payable _user) public payable {
        _user.transfer(msg.value);
    }

    function sendEth(address payable _user) public payable {
        bool didSend = _user.send(msg.value);
        require(didSend, "This failed to send");
    }

    function callEth(address payable _user) public payable {
        (bool didSend, ) = _user.call{value: msg.value}("");
        require(didSend);

    }

    // Payable attribute means it can receive ether

}
