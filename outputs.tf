output "public_ips" {
  value = [for instance in aws_instance.aws_servers : instance.public_ip]
}

