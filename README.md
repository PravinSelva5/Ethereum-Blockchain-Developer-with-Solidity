# Ethereum-Blockchain-Developer-with-Solidity

## Working with different Solidity tools & libraries to get some experience as a Blockchain Developer


### Transactions, Wallets and Hashing Step by Step Summary

1. Transaction Signatures ensure authenticity of transactions
2. Signatures are generated from Private Keys
3. Public Keys and Addresses are generated from Private Keys
4. Private Keys have to be kept secret & safe at all costs

- The private key is sent to a function called Elliptic Curve Digital Signature Algorithm to generate a Public Key (64-bytes long). This is a one way functionality, you can't take your public key and generate your private key. With this public key, you can create an Ethereum Account (Keccak Hash of the last 20 bytes of the public key )


#### Cryptographic Hashing Intro

The ideal cryptographic has function has 5 main properties:

1. Deterministic, same message should always create the same hash
2. Quick
3. One way function, can't go back to find input once hashed
4. Small change to input should create a drastic change to the hash value
5. No collisions between hash values. Each input generates a unique value

Remember, without hashing, there is **NO BLOCKCHAIN**. If you change the contents of one block, you need to **change/adjust** every single block after. This is because the changes will generate a new hash value.


### Learning Solidity Step By Step with Labs and Slides

- Smart contracts is a piece of code running on the blockchain, it can be thought of as a state machine that changes states based off transactions. It can do logic operations, state   change happens through mining + transactions

- Solidity code is compiled into EVM bytecode

- Every high level programming language gets converted to bytecode. Solidity is derived from **ECMAScript** .

- Every public variable in solidity will create a public that the user can interact with in remix

- Turing complete means a system in which a program can be written that will find an answer (although with no guarantees regarding runtime or memory)