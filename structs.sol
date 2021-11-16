pragma solidity >= 0.7.0 < 0.9.0;

contract learnStructs {
    
    struct Movie {
        
        string title;
        string director;
        uint movie_id;
        
    }
    
    Movie movie;
    Movie comedy;
    
    function setMovie() public {
        
        // movie = Movie('Blade Runner', 'Ridley Scott', 1);
        comedy = Movie('Ready Player One', 'Eszter Katona', 2);
        
    }
    
    function getMovieId() public view returns(string memory) {
        
        return comedy.director;
        
    }
}
