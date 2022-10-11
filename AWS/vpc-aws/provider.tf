terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
variable "AWS_REGION" {
  default = "ap-southeast-1"
}
provider "aws" {
  region = var.AWS_REGION
  access_key = ""
  secret_key = ""
}
