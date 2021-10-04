module "GKE" {
  source = "./modules/GKE"

  #Create multiple K8S clusters using for_each
  for_each  = local.k8s_map

  cluster_name = each.key
  cluster_location = each.value.location
  service_account_name = each.value.sa_name
  service_account_id = each.value.sa_id
  node_pool_name = each.value.np_name
  is_preemtable = each.value.is_preemtable
}
