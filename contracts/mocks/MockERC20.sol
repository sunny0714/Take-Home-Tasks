//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";

/**
 * Mock ERC20
 */
contract MockERC20 is ERC20PermitUpgradeable {

  function init(string memory name_, string memory symbol_) public {
    __ERC20_init_unchained(name_, symbol_);
  }

  function mint(address account, uint256 amount) public {
    _mint(account, amount);
  }  

  function burn(address account, uint256 amount) public {
    _burn(account, amount);
  }  
}
