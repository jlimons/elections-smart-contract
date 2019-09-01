pragma solidity >=0.4.0 <0.7.0;

contract Election {

  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }
  mapping(address => bool) public voters;
  mapping(uint => Candidate) public candidates;
  uint public candidatesCount;

  constructor () public {
    addCandidate('Candidate 1');
    addCandidate('Candidate 2');
  }

  function addCandidate (string memory _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }

  function vote (uint _candidateId) public {
    require(!voters[msg.sender], 'This user has already voted');
    require(_candidateId > 0 && _candidateId <= candidatesCount, 'Candidate does not exists');

    voters[msg.sender] = true;
    candidates[_candidateId].voteCount ++;
  }

}