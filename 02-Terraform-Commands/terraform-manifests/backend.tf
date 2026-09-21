terraform {
  backend "gcs" {
    bucket = "tfm-gke-udemy-backends"
    prefix = "02-terraform-commands/state"
  }
}