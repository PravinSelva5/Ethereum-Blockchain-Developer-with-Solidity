pragma solidity ^0.5.15;

contract SomeContract {
    
    uint public myUint = 10;
    function setUint(uint _myUint) public {
        
        myUint = _myUint;
    }
}


/*

--------------------------
 USING the RPC Interface
--------------------------

IPC - Inter Process Communication

You can use RPC interface, IPC, and web sockets  with Javascript/Java/PHP/Python libraries to connect to other blockchain nodes*/