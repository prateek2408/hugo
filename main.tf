module "VPC" {
  source = "./modules/VPC"

  project = var.project_id
  vpc_name = var.cool_vpc_name
  create_vpc = true
  create_subnets = true

}


module "GKE" {
  source = "./modules/GKE"

  #Create multiple K8S clusters using for_each
  for_each  = local.k8s_map

  cluster_name = each.key
  cluster_location = each.value.location
  service_account_name = each.value.sa_name
  service_account_id = each.value.sa_id
  node_pool_name = each.value.np_name
  node_pool_location = each.value.location
  is_preemptible = each.value.is_preemptible
  vpc_network = module.VPC.ID
}
