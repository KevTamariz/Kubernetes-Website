# DNS Zone
resource "google_dns_managed_zone" "dns-w8" {
  name        = "dns-w8"
  dns_name    = "ktamariz.ga."
  description = "DNS Zone for week 8"
  }

resource "random_id" "rnd" {
  byte_length = 4
}

# DNS Record - K8 App
resource "google_dns_record_set" "app" {
  name = "app.${google_dns_managed_zone.dns-w8.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w8.name

  rrdatas = ["34.27.203.32"]
}

# DNS Record - Monitor 
resource "google_dns_record_set" "monitor" {
  name = "monitor.${google_dns_managed_zone.dns-w8.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w8.name

  rrdatas = ["34.27.203.32"]
}

# DNS Record - Dashboard
resource "google_dns_record_set" "dash" {
  name = "dash.${google_dns_managed_zone.dns-w8.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.dns-w8.name

  rrdatas = ["34.27.203.32"]
}