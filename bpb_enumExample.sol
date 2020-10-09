pragma solidity >=0.4.22 <0.8.0;

contract enum_check {
    enum  gender { male, female, other }  // Enum
    gender student = gender.other;

    
    // Define a function to retrieve student data 
	function get_gender() public returns(gender){ 
		return ( student); 
	} 
}
