output "machine_type" {
  value = {
    for instance_key, instance_value in google_compute_instance.myvm :
    instance_key => instance_value.machine_type
  }
}
 
output "zone" {
  value = {
    for instance_key, instance_value in google_compute_instance.myvm :
    instance_key => instance_value.zone
  }
}
 
output "instance_name" {
  value = {
    for instance_key, instance_value in google_compute_instance.myvm :
    instance_key => instance_value.name
  }
}

output "boot_disk" {
  value = {
    for instance_key, instance_value in google_compute_instance.myvm :
    instance_key => instance_value.boot_disk
  }
    sensitive = true
}

output "network" {
  value = {
    for instance_key, instance_value in google_compute_instance.myvm :
    instance_key => instance_value.network_interface
  }
}

