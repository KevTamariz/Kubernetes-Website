resource "google_compute_network" "default" { #Import
  description = "Default network for the project"
  name = "default"
}

# Subnet
resource "google_compute_subnetwork" "default" { #Import
  name          = "default"
  ip_cidr_range = "10.128.0.0/20"
  region        = "us-central1"
  network       = google_compute_network.default.id
}

# IP K8 My app
resource "google_compute_global_address" "myapp" {
  name = "myapp"
}

# IP K8 Monitor
resource "google_compute_global_address" "monitor" {
  name = "monitor"
}

# IP K8 
resource "google_compute_global_address" "dash" {
  name = "dash"
}

# Comentarario