# Level 5 - Token

In this level the goal is to increase your balance of tokens to an amount higher then 20. After spending a lot of time solving this one I feel like things are starting to get interesting (from a software security hacking perspective). You do not need to write a smart contract.

## Solution
Make a call to the transfer function where the `_to` address can be anybody except yourself and the `_value` parameter must be greater then 20. What will happen is that we will trigger a buffer underflow.
- the require statement is checking if we have enough balance in our account to make the transfer. sadly it doesn't actually work as if our balance isn't enough the uint will go negative. uint cannot be negative and therefore wrap around into a really large number. 
- this will happen again when the next step is to withdraw money from our account. It will actually underflow and leave us rich beyond our dreams (in fake tokens on a fake network)


```
(await contract.balanceOf(player)).toString() // should be 20
wait contract.transfer.sendTransaction(instance, toWei(1000))
(await contract.balanceOf(player)).toString() // should be a large number
```