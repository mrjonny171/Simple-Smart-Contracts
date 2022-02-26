pragma solidity 0.6.0;

contract SimpleStorage{

    struct Person{
        string name;
        int256 favoriteNumber;
    }

    Person[] internal people;
    mapping(string => int256) public nameToInt;

    function addPerson(string memory _name, int256 _favoriteNumber) public{
        people.push(Person(_name,_favoriteNumber));
        nameToInt[_name] = _favoriteNumber;
    }

    function retrivePerson(uint256 index) public view returns(string memory _name, int256 _favoriteNumber){
        return (people[index].name, people[index].favoriteNumber);
    }
}