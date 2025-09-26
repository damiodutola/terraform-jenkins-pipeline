variable "aws_access_key" {
    description = "AWS Access Key"
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
}

variable "aws_session_token" {
    description = "AWS Session Token"
}

variable "aws_region" {
    description = "AWS Region"
    default = "us-east-1"
}

variable "key_name" {
  description = "SSH key pair name for EC2"
  type        = string
}

variable "tag_name" {
  description = "Base Name tag for resources"
  type        = string
}

variable "key_pair" {
    description = "Key pair used to login to the instance"
    default = "sshkeys"
}

variable "instance_type" { 
    description = "Instance type for the Jenkins server"
    default = "t3.medium"
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "my-jenkins-security-group-apr-2025" 
}

variable "tfe_api_token" {
    description = "The token used for Jenkins to interact with TFE"
}

variable "bucket" {
    description = "The bucket used for accessing artifacts"
}

variable "org_name" {
    description = "The name of the TFE Organization"
}

variable "workspace_name" {
    description = "The name of the TFE workspace"
}

variable "prefix" {
    description = "Unique prefix for naming"
}

variable "owner" {
    description = "Email address of the person running this configuration"
}

variable "hc_region" {
    description = "Sales region"
    default = "NA-SOUTHEAST-ENT"
}

variable "ami_id" { 
    description = "AMI for Ubuntu Ec2 instance" 
    default     = "ami-0a7d80731ae1b2435" 
}

variable "purpose" {
    description = "Purpose of this configuration"
    default = "Demonstration of using the TF API to manage workflows"
}

variable "ttl" {
    description = "Hours to stay online"
    default = "24"
}
