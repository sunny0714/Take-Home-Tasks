//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {ERC20PermitUpgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/draft-ERC20PermitUpgradeable.sol";
import {IWETH} from "../interfaces/IWETH.sol";

/**
 * Mock WETH
 */
contract MockWETH is ERC20PermitUpgradeable {

  function init(string memory name_, string memory symbol_) public {
    __ERC20_init_unchained(name_, symbol_);
  }

  function withdraw(uint256 _amount) public {
    _burn(msg.sender, _amount);
    (bool success, ) =  msg.sender.call{value:_amount}('');
        
    require(success, "Transfer failed.");
    // address payable target = msg.sender;
    // target.transfer(_amount);
    // require(success, "transfer failed");
  }

  function deposit() public payable {
    _mint(msg.sender, msg.value);
  }  
}
