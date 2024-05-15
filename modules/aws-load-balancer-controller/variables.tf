variable "project_name" {
  type        = string
  description = "To be used to name resources (Name Tag)"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}
