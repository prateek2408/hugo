variable "cluster_name" {
  type = string
}

variable "cluster_location" {
  type = string
}

variable "service_account_name" {
  type = string
}

variable "service_account_id" {
  type = string
}

variable "node_pool_name" {
  type = string
}

variable "node_pool_location" {
  type = string
}


variable "is_preemptible" {
  type = bool
}

variable "vpc_network" {
  type = string
}
