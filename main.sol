// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract MyToken {
    // Public variables to store token details
    string public tokenName = "Sample";
    string public tokenAbbrv = "SMP";
    uint public totalSupply = 0;

    // Mapping to store balances
    mapping(address => uint) public balances;

    // Mint function to create tokens
    function mint(address _address, uint _value) public {
        require(_address != address(0), "Invalid address");
        require(_value > 50, "Value must be greater than 50");
        totalSupply += _value;
        balances[_address] += _value;
    }

    // Custom error definition for revert()
    error InsufficientBalance(string);

    // Combined burn function with require and custom revert
    function burn(address _address, uint _value) public {
        require(_address != address(0), "Invalid address");
        require(_value >= 50, "Value must be greater or equal than 50");
        require(balances[_address] >= _value, "Insufficient balance to burn");
        if (balances[_address] < _value) {
            revert InsufficientBalance("Balance is less than the amount to be burned");
        }
        totalSupply -= _value;
        balances[_address] -= _value;
    }

    // Example function using assert
    function divide(uint a, uint b) public pure returns (uint) {
        assert(b != 0);
        return a / b;
    }
}
