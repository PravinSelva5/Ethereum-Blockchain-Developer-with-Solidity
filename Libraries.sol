pragma solidity ^0.5.11;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract LibrariesExample {

    using SafeMath for uint;
    
    mapping(address => uint) public tokenBalance;
    
    constructor() public {
        tokenBalance[msg.sender] = 1;
    }
    
    function sendToken(address _to, uint _amount) public returns(bool) {
        tokenBalance[msg.sender]  -= tokenBalance[msg.sender].sub(_amount);
        tokenBalance[_to] = tokenBalance[_to].add(_amount);
        
        return true;
    }
    
}


/*

- libraries are a bit like contracts, they are assumed to be stateless
- it can be destroyed because there's nothing in libraries to be destroyed
- You can't inherit any libraries or send any receive ether

- CHANGES TO LIBRARY STRUCUTURES COULD BE IMPLEMENTED IN THE FUTURE, SO STAY UP TO DATE.

*/