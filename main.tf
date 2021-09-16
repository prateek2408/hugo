module "GKE" {
  source = "./GKE"

  #Create multiple K8S clusters using for_each
  for_each  = local.k8s_map

  cluster_name = local.k8s_map.key
  cluster_location = local.k8s_map.value.location
}
