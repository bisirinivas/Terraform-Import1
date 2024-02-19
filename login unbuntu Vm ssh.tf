ssh -i agentpool_key.pem  azureuser@20.117.190.82

chmod 600 agentpool_key.pem

then run again  ssh -i agentpool_key.pem  azureuser@20.117.190.82

1.created agent and selct selfhosted agent
2.mkdir myagent && cd myagen 
3.https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
4.tar zxvf ~/Downloads/vsts-agent-linux-x64-3.234.0.tar.gz
5.sudo apt update
6../config.sh
7.Enter server URL > https://dev.azure.com/yourorgname
8.PAT tocken (azurecicd web -usersetting-will see pat token 
9.add agent name
10../run.sh



run agent in the ubuntu vm 

./run.sh
