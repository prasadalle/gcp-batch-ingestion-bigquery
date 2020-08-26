terraform {
  backend "gcs" {
    bucket = "fs-tf-state-gcp-batch-ingestion"
    region = "australia-southeast1-a"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "certs-283920"
  region = "australia-southeast1-a"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "batch-pipeline"
  storage_class = "REGIONAL"
  location  = "australia-southeast1"
}
