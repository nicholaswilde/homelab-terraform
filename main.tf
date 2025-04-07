terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      # LINK https://github.com/Telmate/terraform-provider-proxmox
      source = "telmate/proxmox"
      version = "3.0.1-rc8"
    }
  }
}

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

provider "proxmox" {  
  # NOTE Optional, but recommended to set to true if you are using self-signed certificates.
  pm_tls_insecure = false
  pm_api_url = var.pm_api_url
  pm_api_token_id = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
}
