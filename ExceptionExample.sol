pragma solidity ^0.5.13;

contract ExceptionExample {
    
    mapping(address => uint64) public balanceReceived; 
    
    function receiveMoney() public payable {
        assert(balanceReceived[msg.sender] + uint64(msg.value) >= balanceReceived[msg.sender]);
        balanceReceived[msg.sender] += uint64(msg.value);
    }
    
    function withdrawMoney(address payable _to, uint64 _amount) public {
        require(_amount <= balanceReceived[msg.sender], "You don't have enough funds!");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
            balanceReceived[msg.sender] -= _amount;
            _to.transfer(_amount);
    }
    
}

/*
Errors are "state reverting"

Require, assert, revert 


ASSERT VS REVERT?

Revert operation (0xfd) for require 
    - returns remaining gas
    - require used to validate user input
    - Trigger Examples:
        - require(x) and x evaluates to False 
        - message call doesn't finish properly
        - external function call to a contract doesn't contain any code
        - contract receives ether without payable modifier
        - contract receives ether at a getter function
        - address.transfer() fails
    
Invalid operation (0xfe) for assert
    - consume all gas
    - assert used to validate invariants
    - assert should only be used for instances that you don't expect to occur.
    - Examples:
        - out of bounds indexed
        - division by zero
        - convert a value too big or negative to enum
        - byteshifting by a negative amount
        

revert could also be used instead of require.
*/