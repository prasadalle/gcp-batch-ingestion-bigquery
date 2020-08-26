terraform {
  required_version = "= 0.11.14"
  backend "gcs" {
    bucket = "fs-tf-state-gcp-batch-ingestion"
    region = "us-west2"
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
