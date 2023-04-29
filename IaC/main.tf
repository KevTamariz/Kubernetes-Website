# Set backend
terraform {
  backend "gcs" {
    bucket = "w8_terra-state"
    prefix = "state"
    credentials = "w8-challenge-abf266598340.json"
  }
}

# Provider
provider "google" {
  project = "w8-challenge"
  credentials = "${file("w8-challenge-abf266598340.json")}"
  region  = "us-central1"
  zone    = "us-central1-b"
}

resource "google_project_service" "api_compute" {
  project = "w8-challenge"
  service = "compute.googleapis.com"
  
  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}

resource "google_project_service" "api_kubernetes" {
  project = "w8-challenge"
  service = "container.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true 
}

resource "google_project_service" "api_dns" {
  project = "w8-challenge"
  service = "dns.googleapis.com"

 timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}
