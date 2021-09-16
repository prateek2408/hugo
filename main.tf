module "GKE" {
  source = "./GKE"

  #Create multiple K8S clusters using for_each
  for_each  = local.k8s_map

  cluster_name = each.key
  cluster_location = each.location
}
