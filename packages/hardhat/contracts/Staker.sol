// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "hardhat/console.sol";
import "./ExampleExternalContract.sol";

contract Staker {
    // External contract that will old stacked funds
    ExampleExternalContract public exampleExternalContract;

    // Balances of the user's stacked funds
    mapping(address => uint256) public balances;

    // Staking threshold
    uint256 public constant threshold = 1 ether;

    // Contract's Events
    event Stake(address indexed sender, uint256 amount);

    constructor(address exampleExternalContractAddress) public {
        exampleExternalContract = ExampleExternalContract(exampleExternalContractAddress);
    }

    function stake() public payable {
        // update the user's balance
        balances[msg.sender] += msg.value;

        // emit the event to notify the blockchain that we have correctly Staked some fund for the user
        emit Stake(msg.sender, msg.value);
    }

  // Collect funds in a payable `stake()` function and track individual `balances` with a mapping:
  // ( Make sure to add a `Stake(address,uint256)` event and emit it for the frontend <List/> display )




  // After some `deadline` allow anyone to call an `execute()` function
  // If the deadline has passed and the threshold is met, it should call `exampleExternalContract.complete{value: address(this).balance}()`


  // If the `threshold` was not met, allow everyone to call a `withdraw()` function


  // Add a `withdraw()` function to let users withdraw their balance


  // Add a `timeLeft()` view function that returns the time left before the deadline for the frontend


  // Add the `receive()` special function that receives eth and calls stake()


}
