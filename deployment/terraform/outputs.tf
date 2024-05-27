output "public_ip" {
  value = aws_instance.java.public_ip
}

output "public_dns" {
  value = aws_instance.java.public_dns
}

output "region" {
  value = var.aws_region
}
