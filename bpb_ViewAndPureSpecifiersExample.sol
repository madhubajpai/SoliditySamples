//Example of a view and pure specifier
pragma solidity >=0.4.22 <0.8.0; 

// Creating a contract 
contract VewAndPureSpecifiersExample{
uint256 number ;       // state variable

//pure keyword does not allow functions to read state variables 
function add(uint256 num1, uint256 num2) public pure returns (uint256){   
        return (num1+num2);   
    }

//function with view specifier is allowed to only read state variables and not allowed to change them 
    function retrieve() public view returns (uint256, bool){
        return (number, true);
    }
}
