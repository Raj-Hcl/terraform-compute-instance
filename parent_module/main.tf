provider "google" {
    credentials = "keys.json"
    project     = "qwiklabs-gcp-03-a349fd59361c"
}

resource "google_compute_instance" "myvm"{
for_each = var.myinstance

    name         = each.key
    machine_type = each.value.machine_type
    zone         = each.value.zone

    boot_disk {
        initialize_params{
            image = each.value.boot_disk_image
        }
    }

    network_interface{
        network = each.value.network
    }

}