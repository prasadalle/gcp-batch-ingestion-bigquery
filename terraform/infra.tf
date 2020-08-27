terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-batch-ingestion"
    region = "australia-southeast1-a"
    prefix = "terraform/state"
  }
}
provider "google" {
  project = "certs-283920"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "f5-batch-pipeline-283920"
  location  = "us-west2"
}
