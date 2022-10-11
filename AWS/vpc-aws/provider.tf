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
  access_key = "AKIA5JU3PFOKI4ECOO4C"
  secret_key = "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"
}