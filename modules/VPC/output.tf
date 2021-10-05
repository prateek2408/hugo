output "ID" {
  value = google_compute_network.vpc[count.index].id 
}
