output "name" {
  description = "Name (id) of the VM"
  value       = google_compute_instance.instance.name
}