terraform {
  backend "azurerm" {
#resource_group_name = "insights_v4_dev"
storage_account_name = "insightsterraformstate"
container_name = "tfstate"
key="adf_infra.tfstate"
# subscription_id = "ASW_PC_Cloud_Engineering"                                           //var.subscription_id
# tenant_id       = "83030971-88c6-461e-8552-c8ee9d60e0b7" 
#sas_token = "sv=2021-12-02&ss=b&srt=sco&sp=rwdlaciytfx&se=2023-04-03T18:16:02Z&st=2023-04-03T10:16:02Z&spr=https&sig=lBUnK6R7wuK7Hz0A%2FK158oNNwWJgCJjuuZPDmCGQ%2BSw%3D"
# use_azuread_auth = true

#access_key = ""
}
}

