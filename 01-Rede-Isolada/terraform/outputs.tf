output "rede" {
  value = [
    "VPC : ${aws_vpc.vpc_abba.id}",
    "SubnetPub1a: ${aws_subnet.abba_subnetPub_1a.id}",
    "SubnetPub1b: ${aws_subnet.abba_subnetPub_1b.id}",
    "SubnetPub1c: ${aws_subnet.abba_subnetPub_1c.id}",
    "SubnetPriv_1a: ${aws_subnet.abba_subnetPriv_1a.id}"
  ]
}