pragma solidity ^0.5.0;

// Equal Split
contract AssociateProfitSplitter {
    
    // Create payable address for Employee One
    address payable employee_one; 
    
    // Create payable address for Employee Two
    address payable employee_two;
    
    // Create payable address for Employee Three
    address payable employee_three;
    
    // Create Constructor
    constructor(address payable _one, address payable _two, address payable _three) public {
        
        // Setting Employee One
        employee_one = _one;
        
        // Setting Employee Two
        employee_two = _two;
        
        // Setting Employee Three
        employee_three = _three;
    }

    // Create Balance function
    function balance() public view returns(uint) {
        
        // Return Balance
        return address(this).balance;
    }

    // Create deposit function
    function deposit() public payable {
        
        // Split `msg.value` into three
        uint amount = msg.value/3; 

        // Transfer 1/3 of the amount to Employee one
        employee_one.transfer(amount);
        
        // Transfer 1/3 of the amount to Employee two
        employee_two.transfer(amount);
        
        // Transfer 1/3 of the amount to Employee three
        employee_three.transfer(amount);

        // Send Remainder to HR
       uint remainder = msg.value-amount*3;
       msg.sender.transfer(remainder);
    }

    // Create Fallback function
    function() external payable {
        
        // Enforce Deposit function
        deposit();
    }
}
