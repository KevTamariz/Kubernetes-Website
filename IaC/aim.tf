resource "google_service_account" "terraformsa" { #Import
  account_id   = "terraformsa"
  project = "w8-challenge"
}

resource "google_service_account" "github-actions" {
  account_id = "github-actions"
  display_name = "github-actions"
}

