provider "google" {
  credentials = "${file("service-account.json")}"
  project     = "${var.project_id}-${terraform.workspace}"
  region      = "${var.region}"
}