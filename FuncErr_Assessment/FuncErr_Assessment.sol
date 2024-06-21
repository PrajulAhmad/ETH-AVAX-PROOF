// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract FuncErr_Assessment
{
    uint public value;
    address public owner;

    constructor()
    {
        owner = msg.sender;
    }
    modifier realOwner() 
    {
        require(msg.sender == owner, "Only owner can access");
        _;
    }

    function setValue(uint _value) public realOwner
    {
        require(_value >= 0, "Value must not be negative");
        assert(_value <= 500);  
        value = _value;
    }

    function resetValue() public realOwner 
    {
        
        if (value == 0) 
        {
            revert("Value is already zero");
        }
        value = 0;
    }
}
