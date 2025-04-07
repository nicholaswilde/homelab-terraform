// https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/lxc
resource "proxmox_lxc" "basic" {
  target_node  = "pve"
  hostname     = var.HOSTNAME
  ostemplate   = "local:vztmpl/ubuntu-20.04-standard_20.04-1_amd64.tar.gz"
  password     = var.lxc_password
  unprivileged = false

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
