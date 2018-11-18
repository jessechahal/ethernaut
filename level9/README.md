# Level 9 - King

so the way i was planning on solving this was getting the King contract to call my fallback function which was not marked as payable and would always called revert. 
The king contract would never be able to send me ETH because of this. For some reason using Remix this didn't seem to work. I kept getting out-of-gas errors on
my transactions. I increased the gas in Remix to the maximum gas value but this still didn't seem to work. What i ended up doing was just using metamask to send
ETH to the King contract instance directly. I submitted the level and that seemed to work. From my understanding I should not have been able to pass the level this
way since end-user wallets are always payable (no way to block recieving ETH). There must be a bug in ethernauts checking of the contract or maybe me trying the 2
difference things at once caused some crazy mayhem to happen. Anyways I have included my solidity code that as far as I can tell should have worked. Maybe there
is some bug? Natalie said that she saw william discover a bug in Remix where it would not correctly propgate gas increases to metamask.

Notes
- i learned that programs are crazy even in EVM. When things shouldn't work, they do. When things should work, they don't.
