//Example of modifiers and its usage
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.8.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {
    uint256 number;
    address owner ;          //new variable added
    
    /**
     * @dev this is constructor function of contract. Invoked only once
     * when contract is deployed
     */
    constructor() public {
        //initialize the number with 0
        number = 0;
        owner = msg.sender;
    }

    /**
     * @dev modifier checking if the caller is the person who has deployed the contract
     *
     */
    modifier onlyOwner {
        require(
            msg.sender == owner,
            "Only owner can call this function."
        );
        _;
    }
    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public onlyOwner {
        number = num;
    }

    function add(uint256 num) public {
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
