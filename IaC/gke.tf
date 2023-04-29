resource "google_container_cluster" "cluster-w8" {
  name                     = "cluster-w8"
  location                 = "us-central1-b"
  network                  = google_compute_network.default.self_link 
  subnetwork               = google_compute_subnetwork.default.self_link
  remove_default_node_pool = true
  initial_node_count       = 1

  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_node_pool" "node-pool" {
  name       = "node-pool0"
  location   = "us-central1-b"
  cluster    = google_container_cluster.cluster-w8.name
  node_count = 2


  node_config {
    machine_type = "e2-medium"
    service_account = google_service_account.terraformsa.email
    oauth_scopes = [
        "https://www.googleapis.com/auth/cloud-platform"
        ]
  }
}