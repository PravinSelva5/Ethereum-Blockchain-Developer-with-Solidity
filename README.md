# Ethereum-Blockchain-Developer-with-Solidity

## Working with different Solidity tools & libraries to get some experience as a Blockchain Developer


### Transactions, Wallets and Hashing Step by Step Summary

1. Transaction Signatures ensure authenticity of transactions
2. Signatures are generated from Private Keys
3. Public Keys and Addresses are generated from Private Keys
4. Private Keys have to be kept secret & safe at all costs


#### Cryptographic Hashing Intro

The ideal cryptographic has function has 5 main properties:

1. Deterministic, same message should always create the same hash
2. Quick
3. One way function, can't go back to find input once hashed
4. Small change to input should create a drastic change to the hash value
5. No collisions between hash values. Each input generates a unique value

Remember, without hashing, there is **NO BLOCKCHAIN**. If you change the contents of one block, you need to change/adjust every single block after it because the changes will generate a new hash value.