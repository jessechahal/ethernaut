# Level 7 - Force

The goal of this level is to learn about 2 things. Its impossible to stop a contract from getting ETH and about the selfdestruct feature of solidity/EVM. 

- my method of doing this was to write a jedi.sol to send ETH to the force.sol contract instance. First i needed to send ETH to my deployed jedi and then i needed to call its useForce() method to destroy itself and give its ETH to the force.

