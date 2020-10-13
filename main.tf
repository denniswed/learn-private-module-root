terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp-dennisw" {
  source  = "app.terraform.io/weddig_enterprises/s3-webapp-dennisw/aws"
  version = "1.0.0"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
}
