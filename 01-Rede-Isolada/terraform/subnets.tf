resource "aws_subnet" "abba_subnetPub_1a" {
  vpc_id            = aws_vpc.vpc_abba.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name = "abba_subnetPub_1a"
  }
}
resource "aws_subnet" "abba_subnetPub_1b" {
  vpc_id            = aws_vpc.vpc_abba.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "sa-east-1b"

  tags = {
    Name = "abba_subnetPub_1b"
  }
}
resource "aws_subnet" "abba_subnetPub_1c" {
  vpc_id            = aws_vpc.vpc_abba.id
  cidr_block        = "10.0.20.0/24"
  availability_zone = "sa-east-1c"

  tags = {
    Name = "abba_subnetPub_1c"
  }
}
resource "aws_subnet" "abba_subnetPriv_1a" {
  vpc_id            = aws_vpc.vpc_abba.id
  cidr_block        = "10.0.30.0/24"
  availability_zone = "sa-east-1a"

  tags = {
    Name = "abba_subnetPriv_1a"
  }
}
# resource "aws_subnet" "abba_subnetPriv_1b" {
#   vpc_id            = aws_vpc.vpc_abba.id
#   cidr_block        = "10.0.40.0/24"
#   availability_zone = "sa-east-1b"

#   tags = {
#     Name = "abba_subnetPriv_1b"
#   }
# }
# resource "aws_subnet" "abba_subnetPriv_1c" {
#   vpc_id            = aws_vpc.vpc_abba.id
#   cidr_block        = "10.0.50.0/24"
#   availability_zone = "sa-east-1c"

#   tags = {
#     Name = "abba_subnetPriv_1c"
#   }
# }