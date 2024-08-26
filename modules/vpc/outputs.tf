
output "vpcid" {
  value = google_compute_network.myvpc.name
}

output "subid" {
  value = google_compute_subnetwork.sub.id
}