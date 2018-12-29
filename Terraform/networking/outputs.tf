

output "public_subnets" {
  value = "${aws_subnet.sam_public_subnet.*.id}"
}

output "public_sg" {
  value = "${aws_security_group.sam_public_sg.id}"
}

output "subnet_ips" {
  value = "${aws_subnet.sam_public_subnet.*.cidr_block}"
}