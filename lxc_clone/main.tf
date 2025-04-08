resource "proxmox_lxc" "basic" {
  target_node = "pve04"
  hostname    = var.hostname
  #id of lxc container to clone
  clone       = "lxc/126"
  # arch        = "arm64"
}
