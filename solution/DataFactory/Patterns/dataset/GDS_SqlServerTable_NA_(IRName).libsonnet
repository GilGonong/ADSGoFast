function(shortIRName = "", fullIRName = "") {
	"name": "GDS_SqlServerTable_NA_" + shortIRName,
	"properties": {
		"linkedServiceName": {
			"referenceName": "GLS_SqlServerDatabase_" + shortIRName,
			"type": "LinkedServiceReference",
			"parameters": {
                "KeyVaultBaseUrl": {
                    "value": "@dataset().KeyVaultBaseUrl",
                    "type": "Expression"
                },
                "PasswordSecret": {
                    "value": "@dataset().PasswordSecret",
                    "type": "Expression"
                },
                "Server": {
                    "value": "@dataset().Server",
                    "type": "Expression"
                },
                "Database": {
                    "value": "@dataset().Database",
                    "type": "Expression"
                },
                "UserName": {
                    "value": "@dataset().UserName",
                    "type": "Expression"
                }
            }
		},
		"parameters": {
            "TableSchema": {
                "type": "string"
            },
            "TableName": {
                "type": "string"
            },
            "KeyVaultBaseUrl": {
                "type": "string"
            },
            "PasswordSecret": {
                "type": "string"
            },
            "Server": {
                "type": "string"
            },
            "Database": {
                "type": "string"
            },
            "UserName": {
                "type": "string"
            }
		},
		"folder": {
			"name": "ADS Go Fast/Generic/" + fullIRName
		},
		"annotations": [],
		"type": "SqlServerTable",
		"schema": [],
		"typeProperties": {
            "schema": {
                "value": "@dataset().TableSchema",
                "type": "Expression"
            },
            "table": {
                "value": "@dataset().TableName",
                "type": "Expression"
            }
        }
	},
	"type": "Microsoft.DataFactory/factories/datasets"
}

