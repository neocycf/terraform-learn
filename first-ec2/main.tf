terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-northeast-1"
}

# Create EC2 instance
resource "aws_instance" "terraform" {
  ami           = "ami-06098fd00463352b6"
  instance_type = "t2.micro"
}
