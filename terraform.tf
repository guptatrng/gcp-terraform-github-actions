terraform {
  required_providers {
    gcp = {
        version = "6.33.0"
        source = "hashicorp/google"
    }
  }

  backend "gcs" {
    prefix = "github-action/test"
    bucket = "nginx-tfstate"
  }
}

provider "google" {
    project = var.project
    region = var.region
    zone = var.zone
}