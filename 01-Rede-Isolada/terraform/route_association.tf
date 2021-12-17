resource "aws_route_table" "abba_routePub" {
  vpc_id = aws_vpc.vpc_abba.id
  route = [
      {
        carrier_gateway_id         = ""
        cidr_block                 = "0.0.0.0/0"
        destination_prefix_list_id = ""
        egress_only_gateway_id     = ""
        gateway_id                 = aws_internet_gateway.abba_gw.id
        instance_id                = ""
        ipv6_cidr_block            = ""
        local_gateway_id           = ""
        nat_gateway_id             = ""
        network_interface_id       = ""
        transit_gateway_id         = ""
        vpc_endpoint_id            = ""
        vpc_peering_connection_id  = ""
      }
  ]
  tags = {
    Name = "abba_routePub"
  }
}

resource "aws_route_table_association" "abba_rtpub_sneta" {
  subnet_id      = aws_subnet.abba_subnetPub_1a.id
  route_table_id = aws_route_table.abba_routePub.id
}
resource "aws_route_table_association" "abba_rtpub_snetb"  {
  subnet_id      = aws_subnet.abba_subnetPub_1b.id
  route_table_id = aws_route_table.abba_routePub.id
}
resource "aws_route_table_association" "abba_rtpub_snetc"  {
  subnet_id      = aws_subnet.abba_subnetPub_1c.id
  route_table_id = aws_route_table.abba_routePub.id
}


# route tables private

# resource "aws_route_table" "abba_routePriva" {
#   vpc_id = aws_vpc.vpc_abba.id
#   route = [
#       {
#         carrier_gateway_id         = ""
#         cidr_block                 = "0.0.0.0/0"
#         destination_prefix_list_id = ""
#         egress_only_gateway_id     = ""
#         gateway_id                 = ""
#         instance_id                = ""
#         ipv6_cidr_block            = ""
#         local_gateway_id           = ""
#         nat_gateway_id             = aws_nat_gateway.abba_NAT1a.id
#         network_interface_id       = ""
#         transit_gateway_id         = ""
#         vpc_endpoint_id            = ""
#         vpc_peering_connection_id  = ""
#       }
#   ]
#   tags = {
#     Name = "abba_routePriva"
#   }
# }
# resource "aws_route_table" "abba_routePrivb" {
#   vpc_id = aws_vpc.vpc_abba.id
#   route = [
#       {
#         carrier_gateway_id         = ""
#         cidr_block                 = "0.0.0.0/0"
#         destination_prefix_list_id = ""
#         egress_only_gateway_id     = ""
#         gateway_id                 = ""
#         instance_id                = ""
#         ipv6_cidr_block            = ""
#         local_gateway_id           = ""
#         nat_gateway_id             = aws_nat_gateway.abba_NAT1b.id
#         network_interface_id       = ""
#         transit_gateway_id         = ""
#         vpc_endpoint_id            = ""
#         vpc_peering_connection_id  = ""
#       }
#   ]
#   tags = {
#     Name = "abba_routePrivb"
#   }
# }

# resource "aws_route_table" "abba_routePrivc" {
#   vpc_id = aws_vpc.vpc_abba.id
#   route = [
#       {
#         carrier_gateway_id         = ""
#         cidr_block                 = "0.0.0.0/0"
#         destination_prefix_list_id = ""
#         egress_only_gateway_id     = ""
#         gateway_id                 = ""
#         instance_id                = ""
#         ipv6_cidr_block            = ""
#         local_gateway_id           = ""
#         nat_gateway_id             = aws_nat_gateway.abba_NAT1c.id
#         network_interface_id       = ""
#         transit_gateway_id         = ""
#         vpc_endpoint_id            = ""
#         vpc_peering_connection_id  = ""
#       }
#   ]
#   tags = {
#     Name = "abba_routePrivc"
#   }
# }

# resource "aws_route_table_association" "abba_rtPriv_Assoc1a" {
#   subnet_id      = aws_subnet.abba_subnetPriv_1a.id
#   route_table_id = aws_route_table.abba_routePriva.id
# }
# resource "aws_route_table_association" "abba_rtPriv_Assoc1b" {
#   subnet_id      = aws_subnet.abba_subnetPriv_1b.id
#   route_table_id = aws_route_table.abba_routePrivb.id
# }
# resource "aws_route_table_association" "abba_rtPriv_Assoc1c" {
#   subnet_id      = aws_subnet.abba_subnetPriv_1c.id
#   route_table_id = aws_route_table.abba_routePrivc.id
# }