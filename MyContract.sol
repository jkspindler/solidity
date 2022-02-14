// SPDX-License-Identifier: MIT

/** ^ This identifies the license used for the smart contract. If this line is not present,
    the compiler will throw an error.
*/

// Normal Single Line Comment - Use Two forward slashes

/* 
Normal Multi-Line Comment - Use this format for paragraphs
ANY COMMENT IN SOLIDITY IS ONLY NECESSARY FOR CONTEXT & IS NOT SEEN BY THE COMPILER.
*/

/**
NatSpec Multi-Line Comment - A standardized format for in-code comments
*/

/// @title Some Title Here - NatSpec Comments
/// Read About NatSpec https://docs.soliditylang.org/en/v0.8.10/natspec-format.html

//-----------------------------------------------------------------------------------------

pragma solidity ^0.8.0;
/** ^ This sets the version of solidity. The "^" represents any version above the specified 
    version. You can also use ">=" & "<=" to include a defined range of versions. The reason
    you would want to do a range is to exclude new "breaking changes" releases. 
*/

/// @title A basic contract for learning solidity
/// @author Jon K. Spindler
/// @notice You can use this contract to learn the basic smart contract structure
contract MyContract {
    // ^ Declare Contract Name. Typically same name as file name. 
    string public name = "Jon";
    // ^ Variable type is string. Publicly viewable. Setting "Name" to = "Jon". End with ";"

    function updateName() public {
        // Creating a function to be able to change the name after contract is deployed.
        // ^Declare the function name, set permissions.
        name = "New Name";
        // Provides a new feature for the name to be updated to this statically configured name. 
    }
    function editName(string memory _newName) public {
        // Creating a function to be able to change the name based on an input parameter.
        // Have to set data type of new parameter, and use "memory" to save it temporarily for function call.
        // ^Declare the function name, set permissions, enter parameter name.
        // This makes a reusable function. 
        name = _newName;
        // Provides a new feature for the name to be edited with any new input. 
    }
}
