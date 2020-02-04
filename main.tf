provider "aws" {
  region     = "us-east-2"
  access_key = "ACESSKEYXXXXXXXXXX"
  secret_key = "SECRETKEYXXXXXXXXXXX"
}


module "network" {
source = "../modules/network"
  vpc_name = "module-vpc"
  vpc_cidr_block = "120.12.0.0/16"
  subnet_name = "module-subnet1"
  subnet_cidr_block = "120.12.1.0/24"
}
