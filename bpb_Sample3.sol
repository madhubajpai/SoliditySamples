pragma solidity >=0.4.22 <0.8.0;

contract enum_check {
    enum  gender { male, female, other }  // Enum
    gender student = gender.other;


//    address myAddress = 0xbb9bc244d798123fde783fcc1c72d3bb8c189413;
    string  myString1 = "my sample string";
    string myString2 = unicode"Hello 😃";
//    string  myHexString = hex"001234FF";     // this statement results into a Solidity defect. solidity needs tofix this. 
    
    
    // Define a function to retrieve student data 
	function get_gender() public returns(gender){ 
		return ( student); 
	} 
}
