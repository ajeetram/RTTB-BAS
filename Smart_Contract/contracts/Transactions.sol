// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

contract Transactions{
    uint256 transactionCount;

    event Transfer(address from, address reciever, uint amount , string message, uint256 timestamp, string keyword);
    struct TransferStruct
    {
        address sender;
        address reciever;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword; 
   
    }


    TransferStruct[] transactions; // To store different trasaction we define a array of struct type
    

    function addToBlockchain( address payable reciever, uint amount , string memory message, string memory keyword ) public
    {
        transactionCount +=1;
        transactions.push(TransferStruct(msg.sender, reciever,amount, message, block.timestamp, keyword));
        emit Transfer(msg.sender, reciever,amount, message, block.timestamp, keyword);
         

    }
    function getTransactions() public view returns(TransferStruct[] memory)
    {
      return transactions;
    }
    function getTransactionCount() public view returns(uint256)
    { 
         return transactionCount;

    }

}