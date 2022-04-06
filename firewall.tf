# Allow http traffic.
resource "google_compute_firewall" "http" {
  name    = "http"
  network = "default"
  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
  source_ranges = ["0.0.0.0/0"]
}
