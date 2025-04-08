terraform {
  required_version = ">= 0.13.0"

  required_providers {
    proxmox = {
      # LINK https://github.com/Telmate/terraform-provider-proxmox
      source = "telmate/proxmox"
      version = "3.0.1-rc7"
    }
  }
}

provider "proxmox" {  
  # NOTE Optional, but recommended to set to true if you are using self-signed certificates.
  pm_tls_insecure = false
  pm_api_url = var.pm_api_url
  pm_api_token_id = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
}
