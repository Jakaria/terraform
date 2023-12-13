terraform {
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 3.43, < 6"
    }
  }
}

provider "google-beta" {
  credentials = file("../gcp/sa.json")

  project = var.project_id
  region  = "us-central1"
  zone    = "us-central1-c"
}