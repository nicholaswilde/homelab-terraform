resource "proxmox_lxc" "basic" {
  target_node  = "pve04"
  hostname     = var.HOSTNAME
  ostemplate   = "pve-shared:vztmpl/debian-bookworm-20231124_arm64.tar.xz"
  password     = var.lxc_password
  unprivileged = false
  # arch         = "arm64"

  // Terraform will crash without rootfs defined
  rootfs {
    storage = "local-lvm"
    size    = var.SIZE
  }

  network {
    name   = "eth0"
    bridge = "vmbr0"
    ip     = "dhcp"
  }
}
