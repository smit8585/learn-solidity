pragma solidity ^0.8.0;

contract DonateContract {

  int totalDonations; // the amount of donations
  address payable owner; // contract creator's address

  //contract settings
  constructor() {
    owner = payable(msg.sender); // setting the contract creator
  }

  //public function to make donate
  function donate(int amount) public returns(int) {
      totalDonations += amount; 
      return totalDonations;
  }

  // public function to return total of donations
  function getTotalDonations() view public returns(int) {
    return totalDonations;
  }
}