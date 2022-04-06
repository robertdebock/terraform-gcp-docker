provider "google" {
  project = "roberts-project-23"
  region  = "us-central1"
  zone    = "us-central1-b"
}

provider "docker" {
  # Local docker installations would use:
  # host = "unix:///var/run/docker.sock"
  # Remote docker installations would use:
  host = "ssh://fedora-35-x64-cloudtop.meinit.nl"
}
