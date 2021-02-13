provider "google" {
  project     = local.project
  region      = var.region
  credentials = file(var.credentials_file)
}

# VPC
resource "google_compute_network" "vpc" {
  name                    = "${local.project}-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${local.project}-subnet"
#  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
