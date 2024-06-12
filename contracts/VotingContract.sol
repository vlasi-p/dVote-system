//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract Create {
    using Counters for Counters.Counter;

    Counters.Counter public _voterId;
    Counters.Counter public _candidateId;

    address public votingOrganizer;

    struct Candidate {
        uint256 candidateId;
        string age;
        string name;
        string image;
        uint256 voteCount;
        address _address;
        string ipfs;
    }

    event CandidateCreate (
        uint256 candidateId,
        string age,
        string name,
        string image,
        uint256 voteCount,
        address _address,
        string ipfs
    );

    address[] public candidateAddress;

    mapping(address => Candidate) public candidates;

    address[] public votedVoters;
    
    address[] public votersAddress;
    mapping(address => voters) public voters;

    struct Voter{
        uint256 voter_voterId;
        string voter_name;
        string voter_image;
        address voter_address;
        uint256 voter_allowed;
        bool voter_voted;
        uint256 voter_vote;
        string voter_ipfs;
    }

    event VoterCreated (
        uint256 voter_voterId,
        string voter_name,
        string voter_image,
        address voter_address,
        uint256 voter_allowed,
        bool voter_voted,
        uint256 voter_vote,
        string voter_ipfs
    );

    constructor() {
        votingOrganizer = msg.sender;
    }

    function setCandidate(address _address, string memory _age, sting memory _name,
    string memory _image, string memory _ipfs) public {
        require(votingOrganizer == msg.sender, "Only organizer can create voters");
    }

}