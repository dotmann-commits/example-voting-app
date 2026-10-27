output "cluster_name" {
  description = "The name of the provisioned kind cluster"
  value       = kind_cluster.voting_app.name
}

output "endpoint" {
  description = "The Kubernetes API server endpoint"
  value       = kind_cluster.voting_app.endpoint
}

output "kubeconfig_path" {
  description = "Path to the kubeconfig file configured for kubectl"
  value       = kind_cluster.voting_app.kubeconfig_path
}
