# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "rumo-state-bucket"
    prefix = "terraform/state"
    credentials = "./my-second-project-416401-f024ec5b7771.json"
  }
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "my-second-project-416401"
  region  = "us-central1"
  credentials = "${path.module}/my-second-project-416401-f024ec5b7771.json"
}
