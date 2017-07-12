pragma solidity ^0.4.8;

contract User {
    enum UserType { none, reader, reviewer, writer }
    
    // Maps user Ethereum addresses to internal IDs
    mapping (address => uint32) userId;
    // Maps user Ethereum addresses to their profiles on IPFS
    mapping (address => string) userIpfsHash;
    // Maps user Ethereum addresses to accounts types
    mapping (address => UserType) userType;
    
    function updateUserId(uint32 id) {
        userId[msg.sender] = id;
    }
    
    function retrieveUserId(address userAddress) constant returns (uint32) {
        return userId[userAddress];
    }
    
    function updateUserData(string ipfsHash) {
        userIpfsHash[msg.sender] = ipfsHash;
    } 
    
    function retrieveUserData(address userAddress) constant returns (string) {
        return userIpfsHash[userAddress];
    }
    
    function updateUserType(UserType newType) {
        userType[msg.sender] = newType;
    }
    
    function retrieveUserType(address userAddress) constant returns (UserType) {
        return userType[userAddress];
    }
}
