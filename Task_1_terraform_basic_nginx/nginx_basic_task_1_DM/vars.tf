variable "project_id" {
    description = "cowo-devops-course-1"
    type = string
}

variable "region" {
    description = "us-west2"
    type = string
}

variable "zone" {
  description = "Los Angeles"
  type        = string
  default     = "us-west2-a"
}

variable "name" {
  description = "NGINX-Basic"
  type        = string
  default     = "my-webserver"
}

variable "machine_type" {
  description = "GCP VM instance machine type."
  type        = string
  default     = "f1-micro"
}

variable "labels" {
  description = "List of labels to attach to the VM instance."
  type        = map
}