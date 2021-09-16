resource "google_container_cluster" "primary" {
  name     = var.name
  location = var.location

  remove_default_node_pool = true
  initial_node_count       = 1
}

