// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/** 
 * @author Jon K. Spindler
 * @dev Notes on solidity events
 */
contract MyEvents {

    event CreatedNFT(address indexed user, uint256 id, uint dna);

    function createNft(uint256 _id, uint256 _dna) public {
        // create the NFT and save to the storage
        emit CreatedNFT(msg.sender, _id, _dna);
    }
}
