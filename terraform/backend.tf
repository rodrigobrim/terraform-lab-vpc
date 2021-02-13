terraform {
  backend "gcs" {
    credentials = "/keys/gcp-admin.json"
    bucket      = "brim-terraform-state-vpc"
  }
}
