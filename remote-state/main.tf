resource "null_resource" "test" {}

terraform {
  backend "azurerm" {
    use_cli              = true
    #tenant_id            = "00000000-0000-0000-0000-000000000000"
    subscription_id      = "2e2b7ea8-71a7-4e33-a116-85989b5dc3b4"
    resource_group_name  = "Project-Setup"
    storage_account_name = "ashishlavale5tfstates"
    container_name       = "roboshop-state-files"
    key                  = "test.terraform.tfstate"
  }
}


