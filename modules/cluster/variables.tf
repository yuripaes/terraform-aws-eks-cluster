variable "project_name" {
  type        = string
  description = "To be used to name resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}

variable "public-subnet-1a" {
  type        = string
  description = "EKS Cluster Subnet AZ 1a"
}

variable "public-subnet-1b" {
  type        = string
  description = "EKS Cluster Subnet AZ 1b"
}