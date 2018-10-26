pragma solidity ^0.4.18;

contract Owned {
    address owner;
    
    function Owned() public {
        owner = msg.sender;
    }
    
   modifier onlyOwner {
       require(msg.sender == owner);
       _;
   }
}

contract Jobs is Owned{
    
    struct Employee {
        uint age;
        string fName;
        string lName;
    }
    
    mapping (address => Employee) employees;
    address[] public employeeAccts;
    
    function setEmployee(address _address, uint _age, string _fName, string _lName) public {
        var employee = employees[_address];
        
        employee.age = _age;
        employee.fName = _fName;
        employee.lName = _lName;
        
        employeeAccts.push(_address) -1;
    }
    
    function getEmployees() view public returns(address[]) {
        return employeeAccts;
    }
    
    function getEmployee(address _address) view public returns (uint, string, string) {
        return (employees[_address].age, employees[_address].fName, employees[_address].lName);
    }

    function countEmployees() view public returns (uint) {
        return employeeAccts.length;
    }

}
