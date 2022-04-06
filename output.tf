output "google_instance_ip" {
  description = "The ipv4 address of the instance created."
  value       = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}

output "instructions" {
  description = "Use this command to try to connect."
  value       = "curl -k https://localhost:8443/"
}
