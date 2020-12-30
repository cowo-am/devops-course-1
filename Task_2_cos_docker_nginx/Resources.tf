resource "google_compute_instance" "cos-instance" {
  name = var.cos_name
  machine_type = var.machine_type
  zone = var.zone
  tags = ["http-traffic", "ssh-traffic", "http-server", "https-server"]

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

  metadata = {
    "user-data" = "${data.template_file.cloud-init.rendered}"
  }
}

data "template_file" "cloud-init" {
  template = "${file("cloud-init.yml.tmpl")}"
}

output "address" {
  value = "${google_compute_instance.cos-instance.network_interface.0.access_config.0.nat_ip}"
}

