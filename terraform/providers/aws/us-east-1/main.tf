terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.63.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project   = "IteaAnsibleLAMP"
      Temporary = true
    }
  }
}

data "aws_vpc" "vpc" {
  id = var.vpc_id
}