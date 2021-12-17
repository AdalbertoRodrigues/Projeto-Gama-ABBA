resource "aws_vpc" "vpc_abba" {
  cidr_block       = "10.0.0.0/16" # uma classe de IP
  instance_tenancy = "default"  # - (Optional) A tenancy option for instances launched into the VPC. Default is default, which makes your instances shared on the host. Using either of the other options (dedicated or host) costs at least $2/hr.

  tags = {
    Name = "vpc-abba-tf"
  }
}