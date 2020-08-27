terraform {
  backend "gcs" {
    bucket = "f5-batch-pipeline"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "certs-283920"
  region  = "us-west2"
}

resource "google_storage_bucket" "funky-bucket" {
  name = "f5-batch-pipeline-283920"
  location  = "us-west2"
}
