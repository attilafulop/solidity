pragma solidity >= 0.7.0 < 0.9.0;

contract Owner {
    
    address owner;
    
    // when we deploy this contract we want to set the address to the owner (msg.sender)
    
    constructor public {
        
        owner = msg.sender;
        
    }
    
    modifier onlyOwner {
        
        // customisable logic to modify the functions
        
        require(msg.sender == owner);
        _; // continue the code
        
    }
    
}


contract Register is Owner {
    
    // "is" is a keyword for inheritance from another contract (Owner)
    
    // 
    
    mapping(address => bool) registeredAddresses;
    uint price;
    
    constructor(uint initialPrice) public {
        
        price = initialPrice;
        
    }
    
    function register() public payable {
    
    // function register will set msg.sender (current) to true
    
        registeredAddresses[msg.sender] = true;
    
        
    }
    
    function changePrice(uint _price) public onlyOwner {
        
    // onlyOwner is a function modifier that requires only the owner to be able to change the price
    
        price = _price;
        
    }
}
