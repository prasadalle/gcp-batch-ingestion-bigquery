terraform {
  backend "gcs" {
    bucket = "fs-tf-state-gcp-batch-ingestion"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "certs-283920"
  region = "us-west2"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "batch-pipeline"
  storage_class = "REGIONAL"
  location  = "us-west2"
}
