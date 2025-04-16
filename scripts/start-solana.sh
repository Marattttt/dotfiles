#!/bin/bash

solana-validator \
	--identity ~/crypto/sol/keypair.json \
	--vote-account ~/crypto/sol/vote-keypair.json \
	--ledger ~/crypto/sol/ledger \
	--rpc-port 8899 \
	--entrypoint entrypoint.mainnet-beta.solana.com:8001 \
	--expected-genesis-hash $(solana genesis-hash) \
	--gossip-port 8001 \
	--enable-rpc-transaction-history \
	--enable-cpi-and-log-storage \
	--limit-ledger-size
