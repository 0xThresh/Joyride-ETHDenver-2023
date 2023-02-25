//SPDX-License-Identifier: UNLICENSED

// Solidity files have to start with this pragma.
// It will be used by the Solidity compiler to validate its version.
pragma solidity ^0.8.9;

// We import this library to be able to use console.log
import "hardhat/console.sol";


contract JoyKarma {
    uint256 internal currentTokenId; 
    
    struct JoyKarmaToken {
        uint256 tokenId; // ID of the token itself. Should be originated from currentTokenId, and callincrementTokenId() function to increase it by 1
        uint256 tokenType; // 1 = Thank You, 2 = Proud of You, 3 = Thing I Like About You, 4 = ?
        string timestamp; // Refers to the timestamp the token was minted at
        address issuer; // Refers to the address that the token was originally sent to with no message
        string messageHash; // Not 100% sure this is how I want to handle this yet
    }

    mapping(uint256 => address) public tokenIssuer;

    function incrementTokenId() {
        // Increases global currentTokenId by 1 every time a new token is minted so we can always reference tokens by an individual ID~
    }

    function mintToken(address _issuer, uint256 _tokenType) {
        // Will use msg.sender to determine JoyKarmaToken[issuer] and 
    }

    function writeMessageAndSendToken(address _receiver, string messageHash) {
        // Requires that message is not blank, and that the receiver hasn't blocked the issuer address 
    }

    function readPendingToken(uint256 _tokenId) {
        // Allows the frontend to get the token ID so it can request the actual message contents from the backend to display to the receiver
    }

    function acceptToken() {
        // Has to check that token is within acceptable timestamp 
    }

    function burnToken(int _tokenId) {
        
    }

    function blockAddress(address _blockAddress) {
        // TODO: Talk to team about whether we want to add this functionality at contract level or elsewhere
        // Probably makes most sense here, and might be a good use case for Tenderly 
        // Argument could be made this is easier to store in a DB 
    }
}




















// // This is the main building block for smart contracts.
// contract Token {
//     // Some string type variables to identify the token.
//     string public name = "My Hardhat Token";
//     string public symbol = "MHT";

//     // The fixed amount of tokens stored in an unsigned integer type variable.
//     uint256 public totalSupply = 1000000;

//     // An address type variable is used to store ethereum accounts.
//     address public owner;

//     // A mapping is a key/value map. Here we store each account balance.
//     mapping(address => uint256) balances;

//     // The Transfer event helps off-chain aplications understand
//     // what happens within your contract.
//     event Transfer(address indexed _from, address indexed _to, uint256 _value);

//     /**
//      * Contract initialization.
//      */
//     constructor() {
//         // The totalSupply is assigned to the transaction sender, which is the
//         // account that is deploying the contract.
//         balances[msg.sender] = totalSupply;
//         owner = msg.sender;
//     }

//     /**
//      * A function to transfer tokens.
//      *
//      * The `external` modifier makes a function *only* callable from outside
//      * the contract.
//      */
//     function transfer(address to, uint256 amount) external {
//         // Check if the transaction sender has enough tokens.
//         // If `require`'s first argument evaluates to `false` then the
//         // transaction will revert.
//         require(balances[msg.sender] >= amount, "Not enough tokens");

//         // We can print messages and values using console.log, a feature of
//         // Hardhat Network:
//         console.log(
//             "Transferring from %s to %s %s tokens",
//             msg.sender,
//             to,
//             amount
//         );

//         // Transfer the amount.
//         balances[msg.sender] -= amount;
//         balances[to] += amount;

//         // Notify off-chain applications of the transfer.
//         emit Transfer(msg.sender, to, amount);
//     }

//     /**
//      * Read only function to retrieve the token balance of a given account.
//      *
//      * The `view` modifier indicates that it doesn't modify the contract's
//      * state, which allows us to call it without executing a transaction.
//      */
//     function balanceOf(address account) external view returns (uint256) {
//         return balances[account];
//     }
// }
