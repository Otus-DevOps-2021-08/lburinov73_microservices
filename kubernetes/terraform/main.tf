terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_compute_instance" "kube-master" {
  name = "kube-master"

  labels = {
    ansible_group   = "master"
    kubernetes_role = "master"
  }

  resources {
    cores         = var.res_cores
    memory        = var.res_memory
    core_fraction = var.res_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = 40
      type     = "network-ssd"
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

resource "yandex_compute_instance" "kube-worker" {
  count = var.worker_count
  name  = "kube-worker-node${count.index}"

  labels = {
    ansible_group   = "nodes"
    kubernetes_role = "node"
  }

  resources {
    cores         = var.res_cores
    memory        = var.res_memory
    core_fraction = var.res_core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
      size     = 40
      type     = "network-ssd"
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
