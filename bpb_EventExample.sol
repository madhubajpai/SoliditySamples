// Solidity program to demonstrate events 
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.8.0;

// Sample contract to demonstrate events 
contract eventExample { 

	// Declaring state variables 
	uint256 public value = 0; 

	// Declaring an event 
	event Increment(address owner); 

	// Defining a function for logging event 
	function getValue(uint _a, uint _b) public returns (uint256){ 
		emit Increment(msg.sender); 
		value = _a + _b; 
		return value;
	} 
}

