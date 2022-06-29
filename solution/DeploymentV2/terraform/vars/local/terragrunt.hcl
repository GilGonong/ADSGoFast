inputs = {
  prefix                               = "ads"              # All azure resources will be prefixed with this
  domain                                = "moqdigital.com.au"              # Used when configuring AAD config for Azure functions 
  tenant_id                             = "e73431a8-a744-43da-8f5e-68fc1dca7a5b"           # This is the Azure AD tenant ID
  subscription_id                       = "cd486ba9-eef3-466d-b16c-7f1b2941ae9d"     # The azure subscription id to deploy to
  resource_location                     = "Australia East"        # The location of the resources
  resource_group_name                   = "sif4-moq-dev-rg"          # The resource group all resources will be deployed to
  owner_tag                             = "lbravo"               # Owner tag value for Azure resources
  environment_tag                       = "dev"                   # This is used on Azure tags as well as all resource names
  ip_address                            = "103.12.191.7"          # This is the ip address of the agent/current IP. Used to create firewall exemptions.
  deploy_web_app                        = true
  deploy_function_app                   = true
  deploy_custom_terraform               = true # This is whether the infrastructure located in the terraform_custom folder is deployed or not.
  deploy_app_service_plan               = true
  deploy_data_factory                   = false
  deploy_sentinel                       = false
  deploy_purview                        = false    
  deploy_synapse                        = true
  deploy_metadata_database              = true
  is_vnet_isolated                      = false
  publish_web_app                       = true
  publish_function_app                  = true
  publish_sample_files                  = true
  publish_sif_database                  = true
  publish_metadata_database             = true
  configure_networking                  = true
  publish_datafactory_pipelines         = true
  publish_web_app_addcurrentuserasadmin = true
  deploy_selfhostedsql                  = false
  is_onprem_datafactory_ir_registered   = false
}
