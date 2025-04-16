terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    owner = "sifrizz"
  }
}
variable "region" {
  description = "aws region"
  default     = "us-east-1"
}
