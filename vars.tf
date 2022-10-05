// Your SSH key
variable "ssh_public_key" {
  default     = ""
  description = "Public ssh ID name. This needs to be pre-created."
}
// Magic Value for Calalog Validation that initlizes terraform with a specific version.
// Only needed in IBM catalog.
variable "TF_VERSION" {
  default     = "1.1"
  description = "Terraform version to be used in validation"
}
// IBM Regions
variable "region" {
  type        = string
  default     = "us-south"
  description = "Deployment Region"

}

variable "resource_group_name" {
  type        = string
  description = "Resource group into which to provision resources"
}

// IBM availability zones
variable "zone1" {
  type        = string
  default     = "us-south-1"
  description = "Deployment Zone."

}
variable "vpc" {
  type        = string
  default     = ""
  description = "Name of the VPC you want to deploy a FortiGate into."
}
variable "subnet1" {
  type        = string
  default     = ""
  description = "The ID of the Primary, Public Subnet Used for port1 on the FortiGate"
}
variable "subnet2" {
  type        = string
  default     = ""
  description = "The ID of the Secondary, Private Subnet Used for port2 on the FortiGate"
}

variable "security_group" {
  type        = string
  default     = ""
  description = "The Security Group to attach to the FortiGate Instance Network Interfaces."
}

// Name will be in the format of cluster_name-RESOURCE-randomSuffix to be easily identifiable.
// Name must be lowercase
variable "cluster_name" {
  type        = string
  default     = "fortigate-terraform"
  description = "Cluster name will be appended by a random Suffix to prevent collisions and allow easier identification."

}
// Random Suffix to avoid name collisions and identify cluster.
resource "random_string" "random_suffix" {
  length           = 4
  special          = true
  override_special = ""
  min_lower        = 4
}

// FortiOS Custom Image ID
// https://docs.fortinet.com/vm/ibm/fortigate/6.4/ibm-cloud-cookbook/6.4.2/992669/deploying-fortigate-vm-on-ibm-cloud
// Deploys 7.2.0 image
variable "image" {
  default = "cos://us-geo/fortinet/fortigate_byol_721_b1254_GA.qcow2"
}
//For more details see: https://cloud.ibm.com/docs/account?topic=account-userapikey
variable "ibmcloud_api_key" {
  default     = ""
  description = "IBM Gen2 API key."
}
// Default Instance type
// See: https://cloud.ibm.com/docs/vpc?topic=vpc-profiles
variable "profile" {
  default     = "cx2-2x4"
  description = "VM size and family"
}

// Bootstrap configuration file
variable "user_data" {
  type        = string
  default     = "user_data.conf"
  description = "The Custom Bootstrap Data file name."
}

variable "boot_encryption_key" {
  type = string
  description = "Key Protect or HPCS encryption key crn for encrypting the boot volume"
}

variable "logdisk_encryption_key" {
  type = string
  description = "Key Protect or HPCS encryption key crn for encrypting the log disk."
}