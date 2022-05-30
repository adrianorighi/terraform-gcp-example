# Compute Instance
# Documentation: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance
resource "google_compute_instance" "instance" {
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"

 allow_stopping_for_update = true

  boot_disk {
    auto_delete = "${var.disk_auto_delete}"

    initialize_params {
      image = "${var.image_project}/${var.image_family}"
      size  = "${var.disk_size_gb}"
      type  = "${var.disk_type}"
    }
  }


  network_interface {
    network = "${var.network}"
    subnetwork = "${var.subnetwork}"
  }
}