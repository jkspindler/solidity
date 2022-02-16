// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity structs
 */
contract MyStructs {

    struct NFT {
        string name;
        uint256 dna;

    }

    mapping(uint256 => NFT) nftMapping;
    NFT[] public nftList;

    function addNFT(string memory _name, uint256 _dna) public {
       // NFT memory newNFT;
       // newNFT.name = _name;
       // newNFT.dna = _dna;
       NFT memory newNFT = NFT(_name, _dna);
        nftList.push(newNFT);
    }
    function getNftName(uint256 _index) public view returns(string memory){
        return nftList[_index].name;
    }
}
