# Pull the Docker image.
resource "docker_image" "default" {
  name = "robertdebock/mirror:latest"
}

# Create the container.
resource "docker_container" "proxy" {
  image   = docker_image.default.latest
  name    = "proxy-robert"
  # This container picks up the variable "URL".
  # Details: https://hub.docker.com/repository/docker/robertdebock/mirror
  env     = ["URL=http://${google_compute_instance.default.network_interface.0.access_config.0.nat_ip}/"]
  ports {
    internal = 80
    external = 8080
  }
  ports {
    internal = 443
    external = 8443
  }
}
