// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity imports + hashing
 */

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "./MyEvents.sol";

contract NFT {
    uint256 dna;
    string name;

    constructor(string memory _name, uint256 _dna) {
        dna = _dna;
        name = _name;
    }
}

contract MyImport is ERC721, MyEvents {
    NFT[] public nfts;

    string myName = "Jon";
    bytes32 myBytesName = "Jon";
    // Declaring strings as bytes take less compute power
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol){}
    function addNft(string memory _name, uint256 _dna) public {
        NFT nft = new NFT(_name, _dna);
        nfts.push(nft);
    }
    //Hashing - kekak 256

    function myHashedName(string memory _name) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_name));

    // Function takes in a name, passes name into keccak function, and
    // returns hash in bytes32
    }

}
