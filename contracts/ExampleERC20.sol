//SPDX-License-Identifier: MIT
pragma solidity >=0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ExampleERC20 is ERC20, Ownable {
  // string private TOKEN_NAME = "Example ERC20 Token";
  // string private TOKEN_SYMBOL = "XMPL";

  // uint256 private constant TOTAL_SUPPLY = 123456789;

  constructor(string memory tokenName, string memory tokenSymbol, uint256 totalSupply)ERC20(tokenName, tokenSymbol) {
    _mint(msg.sender, totalSupply);
  }

  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }

  function burn(address from, uint256 amount) public onlyOwner {
    _burn(from, amount);
  }
}
