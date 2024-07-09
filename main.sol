// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ExampleContract {
    address public seller;
    uint256 public price;

    mapping(address => bool) public validAccounts;

    constructor() {
        seller = msg.sender; 
    }

    modifier onlyseller() {
        require(msg.sender == seller, "Not the contract seller");
        _;
    }

    modifier onlyValidAccount() {
        require(validAccounts[msg.sender], "Account not valid");
        _;
    }

    function addValidAccount(address account) public onlyseller {
        require(account != address(0), "Invalid account address");
        validAccounts[account] = true;
    }


    function setprice(uint256 newprice) public onlyValidAccount {
        require(newprice > 0, "price must be greater than zero");
        price = newprice;
    }

    function discountPrice(uint256 discountPercentage) public onlyValidAccount {
        require(discountPercentage > 0 && discountPercentage < 100, "Invalid discount percentage");
        uint256 discountAmount = (price * discountPercentage) / 100;
        uint256 newPrice = price - discountAmount;
        assert(newPrice < price); 
        price = newPrice;
    }

    function resetprice() public {
        if (msg.sender != seller) {
            revert("Only the seller can reset the price");
        }
        price = 0;
    }
}
