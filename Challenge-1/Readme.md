3 tier architecture designed using Azure Pass service called Appservices instead of using Vms
for hosting front end application  and API application i used webapps and for data stroage used SQL DB
I had provided basic 3 tier architecture which don't have any security related components like Vnet,keyvault,loadbalancers,Gateways etc.
we can use Azuredevops to deploy these ARM templates and we can establish connectivity between SQL and API APP by passing connection string,username and password as secrets through CD pipeline in Azuredevops either by using keyvault or variable groups
fopr Security purpose we can use Appservice environmnet and for SQL DB we can use Vnet and to connect to that SQL DB we can establish private end point/express router.