pragma solidity >=0.4.0 <0.7.0;

contract Election {

  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  mapping(uint => Candidate) public candidates;
  uint public candidatesCount;

  constructor () public {
    addCandidate('Candidate 1');
    addCandidate('Candidate 2');
  }

  function addCandidate (string memory name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, name, 0);
  }

}