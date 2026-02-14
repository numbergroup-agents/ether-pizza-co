// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EtherPizzaCo {
    string public name = "Ether Pizza Co";
    
    function orderPizza() public payable {
        require(msg.value > 0, "Pizza cost ether");
    }
}
