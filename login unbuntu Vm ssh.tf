ssh -i agentpool_key.pem  azureuser@20.117.190.82

chmod 600 agentpool_key.pem

then run again  ssh -i agentpool_key.pem  azureuser@20.117.190.82

1.created agent and selct selfhosted agent
2.mkdir myagent && cd myagen 
3.https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
4.tar zxvf ~/Downloads/vsts-agent-linux-x64-3.234.0.tar.gz
5.sudo apt update
6.

run agent in the ubuntu vm 

./run.sh
