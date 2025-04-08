resource "proxmox_lxc" "basic" {
  target_node = "pve04"
  hostname    = "lxc-clone"
  #id of lxc container to clone
  clone       = "lxc/126"
}
