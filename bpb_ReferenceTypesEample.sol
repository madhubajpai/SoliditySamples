// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.8.0;

// Creating a contract 
contract reference_type_example { 

	// Defining an array	 
	string[5] mySubjects 
	= ["Maths", "Engligh", "Hindi","Science", "Computers"] ; 
	
	// Defining a Structure 
	struct student { 
		string name; 
		string subject; 
		uint8 marks; 
	} 

	// Creating a structure object 
	student student1; 

	// Creating a mapping 
	mapping (address => student) result; 
	
	// Define a function to save student data 
	function add_student(string memory name, string memory subject, uint8 marks) public returns( bool){ 
		student1.name = name; 
		student1.subject = subject; 
		student1.marks = marks;
		result[msg.sender]= student1 ;
		return ( true); 
	} 
	
	// Define a function to retrieve student data 
	function get_student() public returns(string memory, string memory, uint8){ 
		return ( result[msg.sender].name, result[msg.sender].subject, result[msg.sender].marks); 
	} 

	// Define a function to retrieve student subjects 
	function get_subjects() public returns(string memory, string memory, string memory, string  memory, string memory){ 
		return (mySubjects[0], mySubjects[1], mySubjects[2], mySubjects[3], mySubjects[4]  ); 
	} 
	
}

