pragma solidity >= 0.7.0 < 0.9.0;

// Ether units
// Ethereum is the blockchain and Ether is the currency

contract learnEtherUnits {
    
    function test() public {
        
        // wei is the smallest denomination of Ether
        
        assert(1000000000000000000 wei == 1 ether); //10^18 wei = 1 eth 
        assert(1 wei == 1); //1 wei = 1 
        
        assert(1 ether == 1e18);
        // create an assertion for 2 eths to be equivalent to weis
        
        assert(2 ether == 2e18);
        assert(2000000000000000000 wei == 2 ether);
        
    }
    
    function exercise() public {
        
        assert(60 minutes == 1 hours);
        assert(1 minutes == 60 seconds);
        assert(1 days == 24 hours);
        assert(168 hours == 1 weeks);
        
    }
}
