variable "cidr_block" {
  type        = string
  description = "Networking CIDR Block to be used in the VPC setting"
}

variable "project_name" {
  type        = string
  description = "It will compose the name resources (Name Tag)"
}

variable "region" {
  type        = string
  description = "AWS Region used to create the resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be passed to each module creation"
}