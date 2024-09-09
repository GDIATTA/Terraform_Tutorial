terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "stone-index-435023-t8"
}

resource "google_storage_bucket" "auto-expire" {
  name          = "no-gauss123-public-access-bucket"
  location      = "EU"
  force_destroy = true

  public_access_prevention = "enforced"
}