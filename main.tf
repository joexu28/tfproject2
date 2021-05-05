provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIAVEATSC4ZLXFO2YMS"
    secret_key = "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"
}

resource "aws_vpc" "tfvpc1" {
    cidr_block = "10.0.0.0/16"
    tags = {
      "Name" = "production"
    }
}

resource "aws_subnet" "tfsubnet1" {
    vpc_id = aws_vpc.tfvpc1.id
    cidr_block = "10.0.1.0/24"
    tags = {
      "Name" = "prod-subnet1"
    }
}