# Level 6 - Delegation

The goal of this level is to get you to learn about delegation. It shows you some of the pitfalls if you are not careful. The goal here is to take over the deployed `Delegation` contract using `Delegate.pwn()` function. 

- this method calls the `pwn()` method by sending the function name's bytecode to the delegate contract. the bytecode is the first 4bytes of the sha3/keccak of the method name & parameter types
```
web3.eth.sendTransaction({from:player, to:instance, data: web3.sha3("pwn()").slice(0,10)}, x => console.log(x))
```


Notes
- a delgatecall allows another contract to work in your memory/dataspace. Its kind of like a thread whereas normal call is more like calling another process (which always have their own memory/dataspace)
