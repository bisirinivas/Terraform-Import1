ssh -i agentpool_key.pem  azureuser@20.117.190.82

chmod 600 agentpool_key.pem

then run again  ssh -i agentpool_key.pem  azureuser@20.117.190.82

1.created agent and selct selfhosted agent
2.mkdir myagent && cd myagen 
3.https://vstsagentpackage.azureedge.net/agent/3.234.0/vsts-agent-linux-x64-3.234.0.tar.gz
4.tar zxvf ~/Downloads/vsts-agent-linux-x64-3.234.0.tar.gz
5.sudo apt update
6../config.sh (Enter (Y/N) Accept the Team Explorer Everywhere license agreement now? (press enter for N) > N) PRESS N
7.Enter server URL > https://dev.azure.com/yourorgname
8.PAT tocken (azurecicd web -usersetting-will see pat token 
9.add agent name
10../run.sh



run agent in the ubuntu vm 

./run.sh



Enter server URL > Enter (Y/N) Accept the Team Explorer Everywhere license agreement now? (press enter for N) > 
Enter a valid value for server URL.
Enter server URL > Enter (Y/N) https://dev.azure.com/yourorgname                                               
Enter a valid value for server URL.
Enter server URL > https://dev.azure.com/bisirinivas
Enter authentication type (press enter for PAT) > hpzwvgfotk63c2gryccf2lfitjmvuntm7panqithya43t7u5ahoa
Enter a valid value for authentication type.
Enter authentication type (press enter for PAT) > hpzwvgfotk63c2gryccf2lfitjmvuntm7panqithya43t7u5ahoa
Enter a valid value for authentication type.
Enter authentication type (press enter for PAT) > hpzwvgfotk63c2gryccf2lfitjmvuntm7panqithya43t7u5ahoa
Enter a valid value for authentication type.
Enter authentication type (press enter for PAT) > vasu
Enter a valid value for authentication type.
Enter authentication type (press enter for PAT) > hpzwvgfotk63c2gryccf2lfitjmvuntm7panqithya43t7u5ahoa
Enter a valid value for authentication type.
Enter authentication type (press enter for PAT) > x5fgqkfpd2cw45fyvdnwsat7p66wolvcjdu65hr24ix3pgv3iq3a
Enter a valid value for authentication type.
Enter authentication type (press enter for PAT) > 
Enter personal access token > ****************************************************
Connecting to server ...

>> Register Agent:

Enter agent pool (press enter for default) > vasu
Enter agent name (press enter for devopsagnet) > 
Scanning for tool capabilities.
Connecting to the server.
Successfully added the agent
Testing agent connection.
Enter work folder (press enter for _work) > 
2024-03-01 10:46:43Z: Settings Saved.
azureuser@devopsagnet:~/myagent$ 
./run.sh
Scanning for tool capabilities.
Connecting to the server.
2024-03-01 10:50:28Z: Listening for Jobs

