# Create a native segwit address and get the public key from the address.

NEW_ADDR=$(bitcoin-cli -regtest getnewaddress "" "bech32")

bitcoin-cli -regtest -named getaddressinfo address=$NEW_ADDR | jq -r '.pubkey'