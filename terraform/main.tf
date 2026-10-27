resource "kind_cluster" "voting_app" {
  name            = var.cluster_name
  node_image      = var.node_image
  kubeconfig_path = pathexpand(var.kubeconfig_path)
  wait_for_ready  = true

  kind_config {
    kind        = "Cluster"
    api_version = "kind.x-k8s.io/v1alpha4"

    node {
      role = "control-plane"

      extra_port_mappings {
        container_port = 31000
        host_port      = 31000
        protocol       = "TCP"
      }

      extra_port_mappings {
        container_port = 31001
        host_port      = 31001
        protocol       = "TCP"
      }
    }

    node {
      role = "worker"
    }
  }
}
