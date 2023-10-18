// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

// Ether send/receive function

/*
1) Ethereum Account

EOA (Externally Owned Account) = Create/use through externally owned accounts and cryptocurrency wallets
CA (Contract Acoount) = Created upon distribution, hash the address of the person who gave the transaction and the nonce value.

// Payable : To receive Ether, you must use it. The call function and an ERC20 are exception.
// Msg.sender Address : Sender of the currently called message 
// Msg.value uint : Number of web/tokens sent with the message
// address.balance : current balance

// withDraw
// Deposit 


2) Function for sending Ether = 3 ways to send Ether : send, transfer, call

Payable (Mainly used by attaching to functions, addresses, and constructors.)
    1. send : Consumes 2300 gas and returns true or false for success. = address.send()
    2. transfer : Consumes 2300 gas, exception error occurs in case of failure(revert) = address.transfer()
    3. call : You can select and call a specific function, and it is also possible to send Ether.  = address.call()
    Variable gas consumption (gas value can be specified), success returned as true or false.
    Risk of reentrancy attack

3) How to receive Ether = Function for receiving Ether

1. payable
2. receive() external payable : A maximum of one Ether receive function is allowed per contract.

3. fallback() external payable : A function that is executed instead if the conditions for calling the function are not met.
If msg.data is empty, receive() is called, and if it is not empty, fallback() is called.

*/

contract ex{
    function getBalance(address _address) public view returns (uint) {
        return _address.balance;
    }

    function getMsgValue() public payable  returns (uint) {
        return msg.value;
    }
}

contract ReceiveEther {
    /*
    Which function is called, fallback() or receive()?
           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    // Function to receive Ether. msg.data must be empty
    receive() external payable {}
    // Fallback function is called when msg.data is not empty
    fallback() external payable {}
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}

contract SendEther {
    function sendViaTransfer(address payable to) public payable {
        // This function is no longer recommended for sending Ether.
        to.transfer(msg.value);
    }

    function sendViaSend(address payable to) public payable {
        // Send returns a boolean value indicating success or failure.
        // This function is not recommended for sending Ether.
        bool sent = to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function sendViaCall(address payable to) public payable {
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
} 


