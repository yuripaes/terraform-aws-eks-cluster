variable "project_name" {
  type        = string
  description = "To be used to name resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create managed group"
}

variable "private-subnet-1a" {
  type        = string
  description = "Subnet ID from AZ 1a"
}

variable "private-subnet-1b" {
  type        = string
  description = "Subnet ID from AZ 1a"
}