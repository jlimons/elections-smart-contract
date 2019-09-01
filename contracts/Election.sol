pragma solidity >=0.4.0 <0.7.0;

contract Election {
  // Props
  string public candidate;

  // Constructor
  constructor () public {
    candidate = "Candidate 1";
  }
}