# output "lxc_ip_address" {
#   description = "The primary IPv4 address assigned to the LXC container."
#   # Reference the resource type, its name, and the exported attribute
#   # The exact attribute name might vary slightly based on your provider version.
#   # Common names include: ipv4_address, default_ipv4_address, or inspecting network blocks.
#   value       = proxmox_lxc.basic.ipv4_address
# }

# Optional: If the resource exports all network interface details, you might access it differently
# output "lxc_network_interfaces" {
#   description = "Details of all network interfaces."
#   value       = proxmox_lxc.basic.network # Example, check provider docs
# }
