variable "myinstance" {
    type = map(object({
        machine_type = string
        zone         = string
        boot_disk_image = string
        network         = string
    }))
    default = {
        "instance1" = {
            machine_type   = "n1-standard-1"
            zone           = "us-central1-a"
            boot_disk_image = "debian-cloud/debian-10"
            network        = "default"
        }
        "instance2" = {
            machine_type   = "e2-medium"
            zone           = "us-west1-a"
            boot_disk_image = "debian-cloud/debian-10"
            network        = "default"
        }
    }
}