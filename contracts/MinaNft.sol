// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MinaNft is ERC1155 {
    uint256 public constant Tier_1 = 1;
    uint256 public constant Tier_2 = 2;
    uint256 public constant Tier_3 = 3;

    constructor()
        ERC1155(
            "https://ipfs.io/ipfs/bafybeigusy4aajlawebizifjvay5rwoynkkhlyd7nu2pi2spfyl5no5z7e/{id}.json"
        )
    {
        _mint(msg.sender, Tier_1, 26000, "");
        _mint(msg.sender, Tier_2, 7000, "");
        _mint(msg.sender, Tier_3, 400, "");
    }

    function uri(uint256 _tokenid)
        public
        pure
        override
        returns (string memory)
    {
        return
            string(
                abi.encodePacked(
                    "https://ipfs.io/ipfs/bafybeigusy4aajlawebizifjvay5rwoynkkhlyd7nu2pi2spfyl5no5z7e/",
                    Strings.toString(_tokenid),
                    ".json"
                )
            );
    }
}
