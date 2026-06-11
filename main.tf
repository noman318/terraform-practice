terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  required_version = ">= 1.15.5"
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "terraform_server" {
    ami           = "ami-0f918f7e67a3323f0"
    instance_type = "t3.micro"

    tags = {
        Name = "Terraform_Demo"
    }
}