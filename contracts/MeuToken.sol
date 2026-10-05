// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EclipseToken is ERC20, Ownable {
    constructor(uint256 fornecimentoInicial)
        ERC20("Eclipse Token", "ECL")
        Ownable(msg.sender)
    {
        _mint(msg.sender, fornecimentoInicial * 10 ** decimals());
    }

    function mint(address destinatario, uint256 quantidade) public onlyOwner {
        _mint(destinatario, quantidade * 10 ** decimals());
    }
}