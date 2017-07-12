import "./StandardToken.sol";

pragma solidity ^0.4.8;

contract DNNToken is StandardToken {

    function () {
        //if ether is sent to this address, send it back.
        throw;
    }

    /* Public variables of the token */
    string public name = "DNN";
    uint8 public decimals = 3;
    string public symbol = "DNN";
    uint256 public initialAmount = 10000000 * 10**3;

    function DNN() {
        balances[msg.sender] = initialAmount;               // Give the creator all initial tokens
        totalSupply = initialAmount;
    }
}
