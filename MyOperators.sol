// SPDX-License-Identifier: MIT

/// @author Jon K. Spindler
/// @notice These are my solidity operator notes

pragma solidity ^0.8.0;

contract MyOperators {
    uint8 a = 1;
    uint8 b = 2;
    uint8 c = 3;
    uint8 newValue;
    bool myBool = false;

    /// @notice Arithmetic Operators (+, -, *, /, %, ++, --)
    function example_1() public view {
        a * b + c;
        c % b;
    }
    /// @notice Assignment Operators (=, +=, -=, *=, /=, %=)
    // Equal, Result of Addition, Result of subtraction, Result of Multiply, Result of Divison
    // Remainder after division
    function example_2() public {
        newValue = a * b + c;
        a = newValue;
    }
    /// @notice Comparison Operators (==, !=, <, <=, >, >=)
    // ==(equal) !=(not equal) <(less than) <=(less or equal) >(greater than) >=(greater or equal)
    function example_3() public view {
        bool result = false;
        if(a < b) {
            result = true;
        }
        if(a <= b) {
            result = true;
        }
        if(a == b) {
            result = true;
        }
        if(a != b) {
            result = true;
        }
    }
    /// @notice  Logical Operators (!, &&, ||) !-NOT &&-AND ||-OR
    function example_4() public view {
         bool result = false;
        if(a < b && b > c) {
            result = true;
        }
        if(a < b || b > c) {
            result = true;
        } 
        if(a < b && b > c && a > 20) {
            result = true;
        }  
        if(!myBool) {
            result = true;
        }
        result = !result; 

    }
    /// @notice Conditional Operator (? A:B) - Statement, ? - T/F, Output for each case
    function example_5() public view {
        uint8 result;
        result = a < b ? 100 : 50;
    }
}

