resource "google_compute_instance" "cos-instance" {
  name = var.cos_name 
  machine_type = var.machine_type
  zone = var.zone
  tags = ["http-traffic", "ssh-traffic"]

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-73-11647-217-0"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // this empty block creates a public IP address
    }
  }
}
