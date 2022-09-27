terraform {
  required_version = "> 1.1.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.43"
    }
  }
}

# Configure the IBM Provider
provider "ibm" {
  region           = var.region
  ibmcloud_api_key = var.ibmcloud_api_key
}
