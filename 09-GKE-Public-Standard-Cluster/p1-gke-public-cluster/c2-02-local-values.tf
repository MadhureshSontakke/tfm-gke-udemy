# Define Local Values in Terraform
locals {
  owners = var.business_divsion
  environment = var.environment
  name = "${var.business_divsion}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  gke_node_roles = [
    "roles/container.nodeServiceAccount",
    "roles/container.clusterViewer",
    "roles/compute.viewer",
    "roles/container.defaultNodeServiceAgent",
    "roles/container.defaultNodeServiceAccount"
  ]
  }
} 