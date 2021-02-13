locals {
  project = "brim-app-${var.environment}"
}

variable "region" {
  description = "region"
}

variable "credentials_file" {
  description = "Location of credential json file"
}

variable "environment" {
  description = "Dev stage or prd"
}
