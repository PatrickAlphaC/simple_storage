//SPDX-License-Idenfier : MIT

pragma solidity >=0.6.0 <0.9.0;   // this will specfies the version of solidity we use.

contract SimpleStorage { // it is just like a object in oops.

    uint256 favoriteNumber; // default value is 0;
    bool favoritebool;

    struct People{
          uint favoriteNumber;       // just feel it like a class
          string name;
    }

    // People public people = People({favoriteNumber : 2, name: "hemant"});    //object cration for a single entity.

    // now we create a array basically a dynamic array.
    People[] public people;
   
    // niow if we want to retrive favoritenumber using name , we use mapping.

    mapping (string => uint256) public StringtoNUmber; //here mapping is being initiated.

   function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }
    
    // function retrieve(uint256 favoriteNumber) public pure{
    //      favoriteNumber + favoriteNumber;                    // pure function do mathematical
    // }

    function addPerson(string memory _name , uint _favoriteNumber ) public {
        // we push the People struct into people array.
        people.push(People( _favoriteNumber, _name)); //(_name , _favoriteNUmber) also valid.

        // now we want to pass key and value.
        StringtoNUmber[_name] = _favoriteNumber; // we have key as _name and value as _favorite number.
        
    }
}

