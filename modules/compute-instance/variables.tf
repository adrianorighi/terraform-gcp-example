variable "name" {
  type = string
  description = "The name of your VM resource"
  nullable = false
}

variable "machine_type" {
  type = string
  description = "The machine type of your instance, please check types on your provider"
  default = "f1-micro"
}

variable "zone" {
  type = string
  description = "The zone to create your instance"
  default = "us-east1-b"
}

variable "image_project" {
  type = string
  description = "The project SO image of your instance"
  default = "debian-cloud"
}

variable "image_family" {
  type = string
  description = "The SO image of your instance"
  default = "debian-10"
}

variable "disk_size_gb" {
  type = number
  description = "The size of the image in gigabytes."
  default     = 10
}

variable "disk_type" {
  type = string
  description = "The GCE disk type. Can be either pd-ssd, local-ssd, or pd-standard."
  default     = "pd-ssd"
}

variable "disk_auto_delete" {
  type = bool
  description = "Whether or not the disk should be auto-deleted."
  default     = true
}

variable "network" {
  type = string
  description = "The name of your network"
  default = "default"
}

variable "subnetwork" {
  type = string
  description = "The path of your subnetwork"
}