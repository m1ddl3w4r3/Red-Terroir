terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.43.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.76.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~> 4.0.6"
    }
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

provider "digitalocean" {
  token = var.digitalocean_token
}