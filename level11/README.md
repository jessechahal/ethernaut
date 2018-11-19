# Level 11 - elevator

The goal of this level is to learn how interfaces work (writing the interface implementation) and that the implementation  may not always follow the
the modifiers specific in the infospace. In this case the modifier 'view' is something similar to 'pure' in the sense that no state should be modifed
while calling this implemented function. I ended up writing `isLastFloor(uint)` in my interface implementation such that it actually did modify state.


Notes
- sometimes you need to restart your browser because metamask & elixer are a bit buggy
