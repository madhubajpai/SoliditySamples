// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.8.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {
    uint256 number;
    /**
     * @dev this is construction function of contract. Invoked only once
     * when contract is deployed
     */
    constructor() public {
        //initialize the number with 0
        number = 0;
    }

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public payable {
        number = num;  // this change in the contract state will be recorded on blockchain.
    }

    /**
     * @dev Add a value to a variable
     * @param num value to add 
     */
    function add(uint256 num) public payable {
        number = number + num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }
}
