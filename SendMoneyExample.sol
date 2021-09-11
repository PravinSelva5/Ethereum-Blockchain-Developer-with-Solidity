pragma solidity ^0.5.13;

contract SendMoneyExample {
    
    uint public balanceReceived;
    
    function receiveMoney() public payable {
        balanceReceived += msg.value;
    }
    
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
    
    function withdrawMoney() public {
        address payable to = msg.sender;
        
        to.transfer(this.getBalance());
    }
    
    function withdrawMoneyTo(address payable _to) public {
        _to.transfer(this.getBalance());
    }
    
}


// Externally Owned Accounts (EOA) - is an account that has a private key behind them. They are not deployed with code or have smart contracts associated in them. These accounts were funds are transferred in or out.
/* 

-------------------------
 Address Low level calls
-------------------------

.send() returns a Boolean 
.call.gas().value()() allows you to send a specific amount of gas, also returns a Boolean


-------------------------
    Global Objects
-------------------------

- Help you understand where Transactions come from and what happens inside

- Three very important global properties:
    - msg.sender(): address of the account that initialized the Transactions
    - msg.value(): how much ether were sent along?
    - now: current timestamp

---------------------------------
    Payable Functions Addresses
---------------------------------

- a function cannot receive Ether unless it is marked 'payable'


*/