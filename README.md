# solidity-basics
Learning Solidity from scratch with a focus on understanding how security issues arise in smart contracts.

This repository documents my journey learning Solidity from scratch,with a strong focus on understanding how security issues arise in smart contracts.

# Contents
## SimpleStorage.sol
   Covers basic Solidity concepts such as:
   -State variables
   -Structs
   -Mappings
   -Arrays
   -Function visibility


## StorageFactory.sol
   In this lesson, I learned how smart contracts interact with other deployed contracts.
   -Importing a contract does not copy its state.
   -Interacting with another contract means interacting with its state at a specific address.
   -The imported contract acts as an interface or blueprint.
   -Incorrect addresses can lead to unexpected behavior or security issues.

   #Security perspective:
   
   -External contracts should never be blindly trusted.
   -State always lives where the contract is deployed, not where it is imported.
   -Understanding contract-to-contract calls is critical for identifying vulnerabilities.

## ExtraStorage.sol
   In this lesson, I learned about Inheritance of smart contracts.
   -Functions in parent contracts can be overridden in child contracts using the 'virtual' and 'override' keywords.

   #Security perspective:

   -Bugs can be hidden in parent contracts.
   -Massive risk if parent code is not checked thoroughly.
   -Can corrupt state silently.
   -Upgrades/refactors break layout.
   -Wrong parent function being called, and many more points to keep in mind.
   



Includes comments explaining design choices and potential security considerations.

## Goal
Build a strong foundation in Solidity and smart contract security as preparation for smart contract auditing.
