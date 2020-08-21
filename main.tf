terraform {
    backend "s3" {
        bucket = "zk-terraform-remote-backend"
        key = "state"
        region = "ap-southeast-1"
        dynamodb_table = "terraform-state-lock-ddb"
    }
}

provider "aws" {
    region = "ap-southeast-1"
}

resource "aws_vpc" "test" {
    cidr_block = "192.168.2.0/24"
}