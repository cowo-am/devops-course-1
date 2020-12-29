variable "project" {
  description = "Project ID"
  type = string
  default = "cowo-devops-course-1"
}

variable "region" {
  description = "Project Region Name"
  type = string
  default = "us-west2"
}

variable "cos_name" {
  description = "Resource name"
  type = string
  default = "cos-test"
}

variable "machine_type" {
    description = "Machine Type"
    type = string
    default = "f1-micro"
}

variable "zone" {
    description = "Resource Zone Name"
    type = string
    default = "us-west2-a"
}