variable "region" {
  description = "AWS region"
  type        = string
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "instance_type" {
  description = "Worker node instance type"
  type        = string
}

variable "desired_nodes" {
  description = "Number of desired nodes"
  type        = number
}

variable "max_nodes" {
  description = "Maximum nodes in node group"
  type        = number
}

variable "min_nodes" {
  description = "Minimum nodes in node group"
  type        = number
}