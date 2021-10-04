resource "google_compute_network" "vpc_network" {
  count                   = var.create_vpc ? 1 : 0
  project                 = var.project
  name                    = var.vpc_name
  auto_create_subnetworks = var.vpc_create_subnets
}
