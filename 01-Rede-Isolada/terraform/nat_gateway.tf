# resource "aws_eip" "nat_gateway1a" {
#   vpc = true
# }
# resource "aws_eip" "nat_gateway1b" {
#   vpc = true
# }
# resource "aws_eip" "nat_gateway1c" {
#   vpc = true
# }

# resource "aws_nat_gateway" "abba_NAT1a" {
#   allocation_id = aws_eip.nat_gateway1a.id
#   subnet_id     = aws_subnet.abba_subnetPriv_1a.id
#   tags = {
#     Name = "abba_NAT1a"
#   }
# }
# resource "aws_nat_gateway" "abba_NAT1b" {
#   allocation_id = aws_eip.nat_gateway1b.id
#   subnet_id     = aws_subnet.abba_subnetPriv_1b.id
#   tags = {
#     Name = "abba_NAT1b"
#   }
# }
# resource "aws_nat_gateway" "abba_NAT1c" {
#   allocation_id = aws_eip.nat_gateway1c.id
#   subnet_id     = aws_subnet.abba_subnetPriv_1c.id
#   tags = {
#     Name = "abba_NAT1c"
#   }
# }