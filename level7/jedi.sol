pragma solidity ^0.4.18;

contract Force {
/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/
    //function send (uint256 blah) payable public {}
    //function transfer (uint256 blah) payable public {}
}


contract Jedi {
    address payee;
    //Force force;
    uint balance;
    constructor (address _payee) public {
        payee = _payee;
        //force = Force(payee);
    }

    function powerUpLightsaber () public payable {
        balance += msg.value; //yeah yeah i know this is bad practice
    }

    function useForce () public {
        //force.send(msg.value);
        //force.transfer(msg.value);
        selfdestruct(payee);
    }

    function () payable public {
        selfdestruct(payee);
    }
}