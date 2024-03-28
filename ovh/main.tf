resource "ovh_cloud_project_kube" "my_kube_cluster" {
  service_name = var.service_name
  name         = "poukifactory-cluster"
  region       = var.region
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
  service_name  = var.service_name
  kube_id       = ovh_cloud_project_kube.my_kube_cluster.id
  name          = "poukifactory-pool"
  flavor_name   = var.flavor
  desired_nodes = 1
  max_nodes     = 1
  min_nodes     = 1
}
