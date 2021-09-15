pragma solidity ^0.5.13;

contract MappingsStructExample {
    
    struct Payment{
        uint amount;
        uint timestamps;
    }
    
    struct Balance {
        uint totalBalance;
        uint numPayments;
        mapping(uint => Payment) payments;
    }
    
    mapping(address => Balance) public balanceReceived; 
    // we're mapping the address to the balance struct. Within the balance struct, there's a mapping of a uint to a payment struct.
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function sendMoney() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;
        
        // because Payment is a reference type, you need to specify where it will be stored
        Payment memory payment = Payment(msg.value, now);
        
        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].numPayments] = payment;
        balanceReceived[msg.sender].numPayments++;
    }
    
    function withdrawAllMoney(address payable _to) public {
        
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
        balanceReceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }
    
    function withdrawMoney(address payable _to, uint _amount) public {
        require(balanceReceived[msg.sender].totalBalance >= _amount, "not enough funds");
        balanceReceived[msg.sender].totalBalance -= _amount;
        _to.transfer(_amount);
    }
}

/*

MAPPINGS
    - similar to hash maps 
    - SYNTAX --> mapping(_KeyType => _ValueType) name;
    - key type can be any built-in types + bytes and strings
    - value type can be any type, including mappings 

STRUCTS
    - used to create custom types
    - it is better to define structs than objects
    - structs help reduce gas consumption compared to classes in most cases

ARRAYS
    - fixed or dynamic
    - fixed: T[k]
    - dynamic: T[]
    - usually better to use mappings than arrays because of gas consumption 

ENUM 
    - enums are one way to create a user-defined type in solidity 


*/