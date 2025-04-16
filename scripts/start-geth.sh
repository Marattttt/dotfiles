#!/bin/bash

geth \
	--http \
	--http.api eth,net,web3,personal \
	--http.addr localhost \
	--http.port 8545 \
	--authrpc.addr localhost \
	--authrpc.port 8551 \
	--authrpc.vhosts localhost \
	--datadir ./sepolia-data \
	--signer /home/marat/.clef/clef.ipc
