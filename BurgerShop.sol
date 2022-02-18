// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

/** 
   @author Jon K. Spindler
   @title Burger Shop
   @dev Implements a simple Burger Order/Refund System with Guard Checks
 */
contract BurgerShop {
    uint256 public cost = 0.2 ether;
    uint256 public deluxeCost = 0.4 ether;

    event BoughtBurger(address indexed _from, uint256 _cost);
    
    modifier shouldPay(uint256 _cost) {
        require(msg.value >= _cost, "Insufficient Funds Sent");
        _;
    }

    function buyBurger() payable public shouldPay(cost) {
        emit BoughtBurger(msg.sender, cost);
    }

    function buyDeluxeBurger() payable public shouldPay(deluxeCost) {
        emit BoughtBurger(msg.sender, deluxeCost);
    }

    function refund(address _to, uint256 _cost) payable public {
        require(_cost == cost || _cost == deluxeCost, "Incorrect Refund Amount");
        uint256 balanceBeforeTransfer = address(this).balance;
        
        if(balanceBeforeTransfer >= _cost) {
            (bool success, ) = payable(_to).call{value: _cost}("");
            require(success);
        }
        else {
            revert("Not enough funds");
        }
        assert(address(this).balance == balanceBeforeTransfer - _cost);
    }

    function getFunds() public view returns (uint256) {
        return address(this).balance;
    }
}
