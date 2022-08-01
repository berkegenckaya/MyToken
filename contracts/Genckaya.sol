//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Genckaya is ERC20 {
    uint256 constant _initial_supply = 100 * (10**18);

    constructor() public ERC20("Genckaya", "GNCKY") {
        _mint(msg.sender, _initial_supply);
    }
}
