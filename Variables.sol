pragma solidity ^0.5.13;

contract WorkingWithVariables {
    uint256 public myUnit;
    
    function setMyUnit(uint  _myUint) public {  // uint is an alias for uint256
        myUnit = _myUint;
    }
    
    bool public myBool;
    
    function setmyBool(bool _myBool) public {
        myBool = _myBool;
    }
    
    uint8 public myUint8;
    
    function incrementUint() public {
        myUint8++;
    }
    
    function decrementUint() public {  // be careful with variables and their types
        myUint8--;
    }
    
    address public myAddress;
    
    function setAddress(address _address) public {
        myAddress = _address;
    }
    
    function getBalanceOfAddress() public view returns(uint) {
        return myAddress.balance;
    }
    
    // strings
    // byte arrays in solidity 
    // you need to add the memory keyword to tell solidity that the string will be stored in memory and not in a variable.
    // You cannot concatenate or search for strings in solidity.It's actually pretty expensive to work with strings in the ETH blockchain.
    
    string public myString = 'hello world';
    
    function setMyString(string memory _myString) public {
        myString = _myString;
    }
    
    // variables are initialized by default, so there is no 'null' or 'undefined' functions
    // not all rules of modern development apply to blockchain development (limited resources & variable initialization)
    
}