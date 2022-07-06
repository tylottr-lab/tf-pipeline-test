###################
# Terraform Config
###################

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.3.2"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.4.0"
    }
  }
}

#################
# Backend Config
#################

terraform {
  backend "azurerm" {
    # Authenticate using environment variables or backend config
    # e.g. terraform init -backend-config=state.tfvars
    # https://www.terraform.io/docs/language/settings/backends/azurerm.html
    # export ARM_USE_AZUREAD
    storage_account_name = "tccgensa"
    container_name       = "tfstate"
    key                  = "demo/tf-pipeline-test/terraform.tfstate"
  }
}

##################
# Provider Config
##################
