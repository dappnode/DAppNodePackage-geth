## Geth (Execution Client)

Geth is now ready for the merge!

There are now two RPC APIs in Execution Clients:

1. Querying API `http://geth.dappnode:8545`. Use this endpoint to query transactions on your node and connect your web3 wallet.
2. Engine API `http//geth.dappnode:8551`. Use this enpoint to connect your Beacon Chain (Consensus Layer) client.

After the merge, if your Execution Client is not connected to a Consensus Layer client, you won't be able to use it to query the blockchain, nor will you be able to connect your wallet to it!
