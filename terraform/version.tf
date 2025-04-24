terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }  

    backend "s3" {
      bucket = "course-microservice-terraform-states"
      encrypt = true
      key = "terraform/microservice/terraform.tfstate"
      region = "us-east-1"
    }
}

provider "aws" {
  region = var.region

  default_tags {
  tags = {
    owner = "SIFRIZZ"
  }
}

}
variable "region" {
  description = "aws region"
  default     = "us-east-1"
} 
