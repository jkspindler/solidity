// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity error checking
 */
contract MyErrorsAndChecks {

    uint256 public maxAmount = 100;

    function updateMax(uint256 _newMax) public {
        maxAmount = _newMax;
    }

    function myFunc(uint256 _x, uint256 _y) public view returns (uint256 xy) {
        require(_x < _y, "X is bigger than Y");
        checkMax();
        return _x + _y;
    }

    function myPureRevert(uint256 _x, uint256 _y) public pure returns (uint256 xy) {
        //logic
        if(_x == 10) {
            revert("X is 10");
        }
        return _x + _y;
    }

    function checkMax() internal view {
        assert(maxAmount == 100);
    }
}
