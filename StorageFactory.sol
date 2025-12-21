//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


/*
How to run/call a smart contract via another contract?
Method-1: Absolutely not recommended - copy paste the code,
and then call it inside the contract.
EX:
*/

//Method-2: Using import.

import "./SimpleStorage.sol";//importing the previous contract-SimpleStorage.sol

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;//this stores the address in simpleStorageArray

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(); 
        simpleStorageArray.push(simpleStorage);
    }

    //cool , now how do we interact with the contract-Ans: //Address(of contract) //ABI-Application Binary Interface
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];//this retrieves the contract instance via its index number.
        simpleStorage.store(_simpleStorageNumber);//this helps us update the date under function store from the imported contract.

        /* or
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
        */
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];//again this retrieves the contract instance.
        return simpleStorage.retrieve();//this returns a uint value stored via function retrieve.

        /*or

        return simpleStorageArray[_simpleStorageIndex].retrieve();  This does the same job as above 2 lines combined.

        */
    }
}
