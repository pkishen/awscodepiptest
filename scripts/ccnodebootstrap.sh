#!/bin/bash
keyName=$1
componentBaseUrl=$2
nodename=$3 
hostname=$4
vmUserName=$5
#complianceadminusername=$6
#env=$7
#component=$8
#orchestratorbaseurl:$9
URL=http://$9:33001/keys/$8/$6/envs/$7/nodes
PUBLICKEY=curl -X POST -d
{"keyName":"$1", "componentBaseUrl":"$2", "nodename":"$3", "hostname": "$4", "vmUserName": "$5" }
$URL
echo $PUBLICKEY >> /home/$5/.ssh/id_rsa.pub
cp /home/$5/.ssh/id_rsa.pub /home/$5/.ssh/authorized_keys
