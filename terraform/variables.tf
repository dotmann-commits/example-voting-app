variable "cluster_name" {
  description = "Name of the local kind Kubernetes cluster"
  type        = string
  default     = "voting-app-cluster"
}

variable "node_image" {
  description = "Container image used for kind Kubernetes nodes"
  type        = string
  default     = "kindest/node:v1.31.0"
}

variable "kubeconfig_path" {
  description = "Path where Terraform writes the cluster kubeconfig (supports ~ via pathexpand)"
  type        = string
  default     = "~/.kube/config"
}
