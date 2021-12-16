provider "yandex" {
  version                  = "0.35"
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_compute_instance" "ubuntu-docker" {
  count = var.instances_count
  name  = "docker-host${count.index}"

  labels = {
    tags = "docker-host"
  }

  resources {
    cores         = var.res_cores
    memory        = var.res_memory
    core_fraction = var.res_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
}
