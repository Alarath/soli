//SPDX-License-Identifier: UNLICENSED
pragma solidity  ^0.8.4;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/SafeMath.sol";

contract sikimTasagım is ERC721, ERC721Enumerable, ERC721URIStorage { 
     using safemath for uint256;

    uint public constant mintPrice = 0;


    function _beforeTokenTransfer(address from, address to, uint256 tokenId)
        internal 
        override(ERC721, ERC721Enumerable)
    { 
        super._BeforeTokenTransfer(from,to,tokenId);
    }
    
    function _burn(uint256,ERC721URIStorage) {
        super._burn(tokenId);
    }
    
    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721,ERC721URIStorage)
        returns(string memory)
    {
        return super.tokenURI(tokenId);
    }
    
    function supportsInterface(bytes4 interfaceId)
        public
        view
        override(ERC721,ERC721URIStorage)
        returns(bool)
    {
        return.supportsInterface(interfaceId);
    }
    
    constructor() ERC721("sikimTasagım","STM"){}
    
        function mint(string memory _uri) public payable
        uint256 mintIndex = TotalSupply();
        _safeMint(msg.sender);
        _setTokenURI(mintIndex, _uri);
    }
}
