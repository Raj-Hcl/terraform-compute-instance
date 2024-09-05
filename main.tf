module "vm_module"{
    source = "../parent_module"

    myinstance = {
        instance1 = {
            name            = "myinstance1"
            machine_type    = "e2-medium"
            zone            = "us-east1-c"
            boot_disk_image = "debian-cloud/debian-10"
            network         = "default"
        }
        instance2 = {
           name             = "myinstance2"
            machine_type    = "e2-medium"
            zone            = "us-east1-b"
            boot_disk_image = "debian-cloud/debian-10"
            network         = "default" 
        }
    }
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
  value     = module.vm_module.boot_disk
  sensitive = true
}

output "instancenetwork" {
  value = module.vm_module.network
}
