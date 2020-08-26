terraform {
  rm versions.tf
  sed -i 's/0.11.14/0.12.0/g' main.tf
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
