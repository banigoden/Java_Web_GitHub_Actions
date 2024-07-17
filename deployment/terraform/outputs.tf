output "public_ip" {
  value = aws_instance.web_app.public_ip
}

output "public_dns" {
  value = aws_instance.web_app.public_dns
}

output "region" {
  value       = var.aws_region
  description = "AWS region for the application to deploy into, e.g. 'us-east-1'."
}
