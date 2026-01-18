//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
   /*
   this is inheritance , we made this contract inherit all functions from that contract by making this the child contract.
   If we were to modify any function we don't like from the parent contract,
   then we can do it using these keywords #virtual ,override
   
   we will have to add 'virtual' to the parent function that we want to override here , and add 'override' to the child contract , to override the data.
    */

   function store(uint256 _favoriteNumber) public override{
    favoriteNumber = _favoriteNumber + 5;
   }
}
