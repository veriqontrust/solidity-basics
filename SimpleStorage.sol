// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 favoriteNumber; //This gets initialized to zero! 

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    /* Two ways to do the job

    People public person = People({favoriteNumber: 2, name:"Veriqon"});

    People public person = People(2,"Veriqon");
    
    */
    
    /*
    Both work same as per me , will discuss what's right.
     Note: after searching , i got to know that both work the same but
     1st one is a bit safer than the second
     cause we are assigning values by calling those fields explicitly , so margin or error is low
     plus here order of values doesn't matters as we are directly give the fields values by calling them ,
     but in the second one  1 misplacement of values in different order and it can silently introduce bugs , i.e it's order sensitive.
     Takeaway: Be as elaborative as needed to keep the code more prone to human error.
     */ 
    

    mapping(string => uint256) public nameToFavoriteNumber;
    //this creates a mapping mapps strings(name) to a specific number(uint)

    People[] public people;//this creates an array, named people
     
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;

        /*
        other ways to do it.

        people.push(People(_favoriteNumber, _name));

        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
        */
    }
}
