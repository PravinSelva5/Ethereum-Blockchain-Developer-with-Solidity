pragma solidity ^0.5.13;

contract DebuggerExample {
    uint public myUint;
    
    function setMyUint(uint _myuint) public {
        myUint = _myuint;
    }
}

/*

FUNCTIONS and OPCODES

- Deployment
        Smart Contract Creation --> Compiled to Bytecode --> Send to Network

- Interaction
        ABI, Application Binary Interface, contains all the functions/parameters/return values of the contract
        Json file
        

- Transaction object is populated with encoded data field
- Functions & Arguments are hashed, in other words, are encoded.
- Gas costs are determined by the operational complexity

*/ 