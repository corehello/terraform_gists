terraform {
  # ~> here means verison >= 0.12, < 0.13
  required_version = "~> 0.12"
  required_providers {
    tls = ">= 2.1.1"
    dns = {
      version = ">= 0.1.1"
    }
  }
}
