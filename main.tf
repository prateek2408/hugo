module "GKE" {
  source = "./GKE"

  cluster_name = "my-cluster-1"
  cluster_location = "us-central-1"
}
