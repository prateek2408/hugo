locals {
  k8s_map = {
    "my-cluster1" = {
      "location" = "us-central1"
      "sa_name" = "my-cluster1-sa"
      "sa_id" = "my-cluster1-sa1"
      "np_name" = "my-cluster1-np"
      "is_preemtable" = false
    },
    "my-cluster2" = {
      "location" = "europe-west1"
      "sa_name"  = "my-cluster2-sa"
      "sa_id"    = "my-cluster2-sa2"
      "np_name" = "my-cluster2-np"
      "is_preemtable" = true
    }
  }
}
