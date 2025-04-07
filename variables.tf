variable "HOSTNAME" {
  type      = string
}

variable "SIZE" {
  type      = string
  description = "The desired size for the LXC container's root filesystem (e.g., '8G', '20G')."
  # Optional: Keep the validation
  validation {
    # Regex checks for one or more digits followed by G (for Gigabytes)
    condition     = can(regex("^\\d+G$", var.SIZE))
    error_message = "The rootfs size must be a number followed by 'G' (e.g., '8G')."
  }
}
