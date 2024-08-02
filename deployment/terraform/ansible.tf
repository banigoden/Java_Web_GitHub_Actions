
resource "local_file" "inventory" {
  filename        = "${path.module}./ansible/inventory/ansible-inventory"
  file_permission = "0640"
  content = templatefile("${path.module}/templates/inventory.tftpl",
    {
      AWS_REGION         = var.aws_region
      ENVIRONMENT        = var.ENVIRONMENT
      IMAGE_VERSION      = var.IMAGE_VERSION
      instance_public_ip = aws_instance.web_app.public_ip
      GIT_TOKEN_MY       = var.GIT_TOKEN
      docker_pass        = var.docker_pass
      docker_username    = var.docker_username
    }
  )
  depends_on = [aws_instance.web_app]
}
