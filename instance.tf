# A google instance
resource "google_compute_instance" "default" {
  name         = "webserver"
  machine_type = "e2-small"

  network_interface {
    network = "default"
    access_config {
    }
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  metadata = {
    # This allows the user `username` to login using `id_rsa.pub`.
    # Generate this key using `ssh-keygen -n id_rsa`.
    ssh-keys       = "username:${file("id_rsa.pub")}"
    startup-script = file("script.sh")
  }
}
