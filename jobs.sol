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

contract Jobs is Owned {
    
    struct Employee {
        uint age;
        bytes16 fName;
        bytes16 lName;
    }

    mapping (address => Employee) employees;
    address[] public employeeAccts;

    event employeeInfo(
       bytes16 fName,
       bytes16 lName,
       uint age
    );

    function setEmployee(address _address, uint _age, bytes16 _fName, bytes16 _lName) onlyOwner public {
        var employee = employees[_address];
        
        employee.age = _age;
        employee.fName = _fName;
        employee.lName = _lName;
        
        employeeAccts.push(_address) -1;
        employeeInfo(_fName, _lName, _age);
    }

    function getEmployees() view public returns(address[]) {
        return employeeAccts;
    }

    function getEmployee(address _address) view public returns (uint, bytes16, bytes16) {
        return (employees[_address].age, employees[_address].fName, employees[_address].lName);
    }

    function countEmployees() view public returns (uint) {
        return employeeAccts.length;
    }
}
