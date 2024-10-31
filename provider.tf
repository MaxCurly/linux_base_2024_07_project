terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = "=3.0.1-rc4"
    }
  }
}

provider "proxmox" {
  # url is the hostname (FQDN if you have one) for the proxmox host you'd like to connect to to issue the commands. my proxmox host is 'prox-1u'. Add /api2/json at the end for the API
  pm_api_url = "https://pve.local:8006/api2/json"
 
  # api token id is in the form of: &lt;username>@pam!&lt;tokenId>
  pm_api_token_id = "terraform@pam!terraform_api_token"
 
  # this is the full secret wrapped in quotes. don't worry, I've already deleted this from my proxmox cluster by the time you read this post
  pm_api_token_secret = "8c8599e1-c69b-48d1-8439-1c41d010e327"
 
  # leave tls_insecure set to true unless you have your proxmox SSL certificate situation fully sorted out (if you do, you will know)
#  pm_tls_insecure = true
}