######################### Common Variables #########################

variable "aws_account_id" {
  description = "The AWS Account Number"
  type = string
}

variable "vpc_id" {
  description = "The VPC ID"
  type = string
}

variable "aws_region" {
  description = "(Required) AWS Region"
  type = string
}

variable "environment" {
  description = "(Required) Environment name. E.g. rstnonprod"
  type = string
}

variable "instance" {
description = "(Required) Instnace name. E.g. ppte01"
type = string
}

variable "component" {
  description = "(Required) Component Name. E.g. land, disp, bdm, emr etc"
  type = string
}

variable "config_repo_name" {
  description = "(Required) Configuration Repo Name. E.g. rst_sftp_infra_config"
  type = string
}

variable "common_tags" {
  description = "Tags common to the component"
  type = map
}

variable "specific_tags" {
  description = "Tags specific to an instance of the component"
  type = map
}


######################### Component Variables #########################

variable "vpc_cidr" {
  description = "The VPC CIDR Block range"
  type = list
}

variable "ami" {
  description = "The AMI ID"
  type = string
}

variable "instance_type" {
  description = "The Instance Type"
  type = string
}

variable "instance_count" {
  description = "How many instances you need"
  type = string
  default = "1"
}


# IAM Role
variable "create" {
  default = "true"
  description = "Create an IAM role"
}

variable "create_instance_profile" {
  default = "true"
  description = "Create an IAM Instance Profile"
}

variable "mandatory_policies" {
   description = "List of extra iam policies to be attached to the role"
   type = list
   default = []
}

variable "extra_policy_count" {
   description = "The Number of extra policies to be attached to the role"
   type = string
}

variable "extra_policy_arns" {
   description = "Extra Policy Arns"
   type = list
   default = []
}

variable "iam_role_permissions_boundary" {
  type              = string
  description       = "The permissions boundary to be used in the raw-batch-locker IAM role"
  default           = ""
}

# SSH 
variable "keypair_public_key" {
  description = "Keypair public key. Generate using ssh-keygen -C userName"
}

variable "passwordless_ssh_user" {
  description = "User for Password less SSH for Ansible."
  type = string
}
