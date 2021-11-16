pragma solidity >= 0.7.0 < 0.9.0;

contract exerciseMapping {
    
    struct Movie {
        
        string name;
        string director;
        
    }
    
    mapping(uint => Movie) public movies;
    
    function addMovie(uint id, string memory name, string memory director) public {
        
        movies[id] = Movie(name, director);
        
    }
    
}
