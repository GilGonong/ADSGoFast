function(SourceType = "AzureBlobStorage")	
{
    "type": "%(SourceType)sReadSettings" % {SourceType:SourceType},
    "maxConcurrentConnections": {
        "value": "@pipeline().parameters.TaskObject.Source.MaxConcurrentConnections",
        "type": "Expression"
    },
    "recursive": {
        "value": "@pipeline().parameters.TaskObject.Source.Recursively",
        "type": "Expression"
    },
    "wildcardFileName": {
        "value": "@pipeline().parameters.TaskObject.Source.DataFileName",
        "type": "Expression"
    },
    "deleteFilesAfterCompletion": {
        "value": "@pipeline().parameters.TaskObject.Source.DeleteAfterCompletion",
        "type": "Expression"
    }
}