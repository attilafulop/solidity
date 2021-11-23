pragma solidity >= 0.7.0 < 0.9.0;

contract LedgerBalance {
    
    // create a map of wallets with amounts
    // set up a function that can update the amount of the person call the contract
    
    mapping(address => uint) balance;
    
    function updatesBalance(uint newBalance) public {
  
       balance[msg.sender] = newBalance;

    }
    
}

contract Updated {
    
    function updatesBalance() public {
        
        LedgerBalance ledgerbalance = new LedgerBalance();
        ledgerbalance.updatesBalance(30);
        
    }
}

// Other global variables

contract SimpleStorage {
    
    uint storedData;
    
    function set(uint) public {
        // storedData = x;
        // storedData = block.difficulty;
        // storedData = block.timestamp;
        storedData = block.number;
    }
    
    
    function get() public view returns(uint) {
        return storedData;
    }
}
