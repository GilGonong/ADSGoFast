function(shortIRName = "", fullIRName = "") {
	"name": "GDS_AzureSqlTable_NA_" + shortIRName,
	"properties": {
		"linkedServiceName": {
			"referenceName": "GLS_AzureSqlDatabase_" + shortIRName,
			"type": "LinkedServiceReference",
			"parameters": {
				"Server": {
					"value": "@dataset().Server",
					"type": "Expression"
				},
				"Database": {
					"value": "@dataset().Database",
					"type": "Expression"
				}
			}
		},
		"parameters": {
			"Schema": {
				"type": "string"
			},
			"Table": {
				"type": "string"
			},
			"Server": {
				"type": "string"
			},
			"Database": {
				"type": "string"
			}
		},
		"folder": {
			"name": "ADS Go Fast/Generic/" + fullIRName
		},
		"annotations": [],
		"type": "AzureSqlTable",
		"schema": [],
		"typeProperties": {
			"schema": {
				"value": "@dataset().Schema",
				"type": "Expression"
			},
			"table": {
				"value": "@dataset().Table",
				"type": "Expression"
			}
		}
	},
	"type": "Microsoft.DataFactory/factories/datasets"
}

