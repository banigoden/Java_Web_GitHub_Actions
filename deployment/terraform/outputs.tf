output "public_ip" {
  value = aws_instance.web_app.public_ip
}

output "public_dns" {
  value = aws_instance.web_app.public_dns
}

# output "aws_region" {
#   value = var.aws_region
# }
