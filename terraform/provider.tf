terraform {
  required_version = ">=1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.40"   # ensure all modules use 5.x
    }
  }
}

provider "aws" {
  region = var.region
}