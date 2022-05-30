module "vm_test" {
  source = "../../modules/compute-instance"
  subnetwork = "default"
  name = "vm-test-${terraform.workspace}"
}