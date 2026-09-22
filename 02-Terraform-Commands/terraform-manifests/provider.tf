# provider.tf
terraform {
  required_version = ">= 1.3.0"
  
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }

  backend "gcs" {}
}

provider "google" {
  project = "project-df9bb8d2-8b74-40f0-b1a"
  region  = "us-central1"
  zone    = "us-central1-a"
}
