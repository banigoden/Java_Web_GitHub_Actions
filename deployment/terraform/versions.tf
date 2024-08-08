terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.40.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.4"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.4.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
}
