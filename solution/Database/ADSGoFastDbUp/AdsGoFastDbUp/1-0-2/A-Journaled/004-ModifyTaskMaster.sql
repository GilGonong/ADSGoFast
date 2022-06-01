ALTER TABLE [dbo].[TaskMaster]
    ADD InsertIntoCurrentSchedule [bit] NOT NULL
    CONSTRAINT DF_InsertIntoCurrentSchedule DEFAULT 0;

SET IDENTITY_INSERT [dbo].[SourceAndTargetSystems] ON 
GO
INSERT [dbo].[SourceAndTargetSystems] ([SystemId], [SystemName], [SystemType], [SystemDescription], [SystemServer], [SystemAuthType], [SystemUserName], [SystemSecretName], [SystemKeyVaultBaseUrl], [SystemJSON], [ActiveYN], [IsExternal], [DataFactoryIR]) VALUES (-13, N'Sample - External Oracle Server ', N'Oracle Server', N'Sample Oracle Server Source', N'(local)', N'MSI', NULL, NULL, N'https://ark-stg-kv-ads-bcar.vault.azure.net/', N'{         "Database" : "msdb"  , "Username" : "adminuser", "PasswordKeyVaultSecretName":"selfhostedsqlpw"   }', 1, 1, NULL)
GO

UPDATE [dbo].[SourceAndTargetSystems]
SET SystemServer = '(local)'
	,SystemKeyVaultBaseUrl = 'https://$KeyVaultName$.vault.azure.net/'
	,SystemJSON = '{  "Database" : "Adventureworks"  , "PasswordKeyVaultSecretName":"selfhostedsqlpw"   }'
	,SystemAuthType = 'WindowsAuth'
	,SystemUserName = 'adminuser'
	,SystemSecretName = 'selfhostedsqlpw'
	,SystemType = 'Oracle Server'
WHERE SystemId = '-13'
GO