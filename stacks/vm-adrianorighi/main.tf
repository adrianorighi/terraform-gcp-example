module "vm_adrianorighi" {
  source = "../../modules/compute-instance"
  subnetwork = "default"
  name = "vm-test"
}