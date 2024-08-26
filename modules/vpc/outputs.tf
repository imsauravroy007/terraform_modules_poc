
output "vpcid" {
  value = google_compute_network.myvpc.id
}

output "subid" {
  value = google_compute_subnetwork.sub.id
}