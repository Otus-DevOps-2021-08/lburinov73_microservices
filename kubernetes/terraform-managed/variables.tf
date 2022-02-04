variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "network_id" {
  description = "Network"
}
variable "zone" {
  description = "Zone"
  default     = "ru-central1-a"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key_file" {
  description = "key .json"
}
variable "service_account_id" {
  description = "service account id"
}
variable "res_cores" {
  description = "CPU cores for the instance"
  default     = 4
}
variable "res_memory" {
  description = "Memory size in GB"
  default     = 8
}
variable "worker_count" {
  description = "Number of worker nodes"
  default     = 2
}
variable "res_disk_size" {
  description = "Disk size"
  default     = 64
}
variable "kubernetes_version" {
  description = "Kubernetes version"
  default     = "1.19"
}
variable "kubernetes_release_channel" {
  description = "Kubernetes release channel"
  default     = "RAPID"
}
variable "kubernetes_network_policy_provider" {
  description = "Kubernetes network policy provider"
  default     = "CALICO"
}
