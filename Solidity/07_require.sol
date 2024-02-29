// SPDX-License-Identifier: MIT

pragma  solidity ^0.8.0;

contract demo{

    uint maxlimit = 3;
    function limit(uint _amount) public {
        // like if else if the condition is true then do this, otherwise spit out the message
        require(_amount>maxlimit,"Limit crossed");
        limit(_amount+1);
    }
}