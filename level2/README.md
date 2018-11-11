# Level 2 - Fallout

```
await contract.Fal1out()
```
Done, now you just need to submit the instance.

While is assignment is stupid because its seems extremely unlikely that someone would rename their method name like this it does bring up a valid point. People could refactor their contract name and forget to rename the constructor method. This would turn the constructor into a normal method that can be called by anyone. Newer versions of solidity have a different constructor design that is supposed to prevent this issue from occuring. 