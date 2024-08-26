resource "google_compute_network" "myvpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  mtu                     = 1460
  
}

resource "google_compute_subnetwork" "sub" {
  name          = var.sub_network
  network       = google_compute_network.myvpc.id
  ip_cidr_range = "10.0.1.0/24"
  region        = var.region
  project =  "playground-s-11-0314fa8d"
  
}
