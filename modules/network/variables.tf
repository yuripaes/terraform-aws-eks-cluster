variable "cidr_block" {
  type        = string
  description = "Networking CIDR Block to be used in the VPC setting"
}

variable "project_name" {
  type        = string
  description = "To be used to name resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}