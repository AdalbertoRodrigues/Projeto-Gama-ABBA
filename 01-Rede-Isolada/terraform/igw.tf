resource "aws_internet_gateway" "abba_gw" {
  vpc_id = aws_vpc.vpc_abba.id

  tags = {
    Name = "aws_igw_abba_tf"
  }
}