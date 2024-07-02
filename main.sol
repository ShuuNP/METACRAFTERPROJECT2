// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {
    string public tokenName = "Sample";
    string public tokenAbbrv = "SMP";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        require(_address != address(0), "Invalid address");
        require(_value > 49, "Value must be greater than 49");



        totalSupply += _value;
        balances[_address] += _value;

         assert(balances[_address] <= totalSupply);

        if (balances[_address] > totalSupply) {
            revert("Assertion failed: Invalid total supply after minting");
        }
    }


    error InsufficientBalance(string);

    function burn(address _address, uint _value) public {
        require(_address != address(0), "Invalid address");
        require(_value >= 50, "Value must be greater or equal to 50");
        require(balances[_address] >= _value, "Insufficient balance to burn");

        totalSupply -= _value;
        balances[_address] -= _value;
    }

}

