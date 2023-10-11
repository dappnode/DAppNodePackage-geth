#!/bin/sh

case "$_DAPPNODE_GLOBAL_CONSENSUS_CLIENT_MAINNET" in
"prysm.dnp.dappnode.eth")
  echo "Using prysm.dnp.dappnode.eth"
  JWT_PATH="/security/prysm/jwtsecret.hex"
  ;;
"lighthouse.dnp.dappnode.eth")
  echo "Using lighthouse.dnp.dappnode.eth"
  JWT_PATH="/security/lighthouse/jwtsecret.hex"
  ;;
"teku.dnp.dappnode.eth")
  echo "Using teku.dnp.dappnode.eth"
  JWT_PATH="/security/teku/jwtsecret.hex"
  ;;
"lodestar.dnp.dappnode.eth")
  echo "Using lodestar.dnp.dappnode.eth"
  JWT_PATH="/security/lodestar/jwtsecret.hex"
  ;;
"nimbus.dnp.dappnode.eth")
  echo "Using nimbus.dnp.dappnode.eth"
  JWT_PATH="/security/nimbus/jwtsecret.hex"
  ;;
*)
  echo "Using default"
  JWT_PATH="/security/default/jwtsecret.hex"
  ;;
esac

# Print the jwt to the dappmanager
JWT=$(cat $JWT_PATH)
curl -X POST "http://my.dappnode/data-send?key=jwt&data=${JWT}"

exec geth --authrpc.jwtsecret ${JWT_PATH} $EXTRA_OPTION
