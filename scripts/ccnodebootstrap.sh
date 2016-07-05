#!/bin/bash
keyName=$1
componentBaseUrl=$2
nodename=$3
hostname=$4
vmUserName=$5
complianceadminusername=$6
env=$7
component=$8
orchestratorbaseurl=$9

URL="http://$orchestratorbaseurl:33001/keys/$component/$complianceadminusername/envs/$env/nodes"
echo $URL

curl -H "Content-Type: application/json" -X POST -d '{"keyName":"'"$keyName"'", "componentBaseUrl":"'"$componentBaseUrl"'", "nodename":"'"$nodename"'", "hostname":"'"$hostname"'","vmUserName":"'"$vmUserName"'" }' $URL | tr -d "\""  >> ~/.ssh/id_rsa.pub

cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
