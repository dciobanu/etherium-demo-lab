pragma solidity ^0.4.18;

contract Employee {

    string  fName;
    uint    age;
    address owner;

    event EmployeeEvent (
        string name,
        uint age
    );

    function Employee() public { // constructor
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function setEmployee(string _fName, uint _age) onlyOwner public {
        fName = _fName;
        age = _age;
        EmployeeEvent(fName, age);
    }

    function getEmployee() view public returns (string, uint) {
        return (fName, age);
    }
}
