pragma solidity ^0.6.0;

import "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] internal simpleStorageArray;

    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfAddPerson(uint256 index, int256 favoriteNumber, string memory _name) public{
        SimpleStorage(address(simpleStorageArray[index])).addPerson(_name,favoriteNumber);
    }

    function sfRetrievePerson(uint256 index) public view returns(string memory _name, int256 favoriteNumber){
        return SimpleStorage(address(simpleStorageArray[index])).retrivePerson(index);
    }


}