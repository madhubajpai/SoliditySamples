//Example of an access specifiers 
pragma solidity >=0.4.22 <0.8.0; 

// Creating a contract 
contract AccessSpecifierExample{
uint256 number ;       // state variable

function storeP(uint256 num) public {   //public keyword making it accessible from both outside and inside the contract
        number = num;   //initialize state variable
    }

function storeE(uint256 num) external {   //external keyword making it accessible only from outside the contract
        number = num;   //initialize state variable
    }

//function with public specifier and with view purposes only. Returns the number and not allowed to change any state variable. 
    function retrieve() public view returns (uint256){
        return number;
    }
}