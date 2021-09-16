terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.84.0"
    }
  }
}

provider "google" {
  project = vars.project_id
}
