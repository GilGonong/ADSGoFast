## TaskInstanceExecution


This table records a number of attempts at execution of a TaskMasterInstance. A number of attempts may be performed, if a single attempt fails and a re-run is performed. 

The Status has a number of states:
* InProgress
* Complete
* Failed

[Relevant documentation link](https://microsoft.github.io/azure-data-services-go-fast-documentation/4-Web-Application-Manual/2-TaskInstances.html#22-task-instance-executions)