module "vm_module"{
    source = "../parent_module"
}

output "instancename" {
  value = module.vm_module.instance_name
}

output "machinetype" {
  value = module.vm_module.machine_type
}

output "instancezone" {
  value = module.vm_module.zone
}

output "instance_bootdisk" {
  value = module.vm_module.boot_disk
  sensitive = true
}

output "instancenetwork" {
  value = module.vm_module.network
}
