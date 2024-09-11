resource "google_compute_instance" "myinstance" {
  name = var.instance_name
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network = var.vpcid
    subnetwork = var.subnetworkid
    access_config {}
  }
  machine_type = "e2-micro"
  zone         = "us-east1-b"
  metadata_startup_script = file("${path.module}/app-server.sh")
}

resource "google_compute_firewall" "ssh" {
  name = var.ssh
  
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = var.vpcid
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]

 }

 
