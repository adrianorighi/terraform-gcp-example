output "name" {
  description = "Name of the VM"
  value       = google_compute_instance.instance.name
}

output "id" {
  description = "ID of the VM"
  value       = google_compute_instance.instance.id
}