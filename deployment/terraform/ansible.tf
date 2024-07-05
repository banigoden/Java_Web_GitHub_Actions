
resource "local_file" "inventory" {
  filename        = "${path.module}./ansible/inventory/ansible-inventory"
  file_permission = "0640"
  content = templatefile("${path.module}/templates/inventory.tftpl",
    {
      region             = var.region
      ENVIRONMENT        = var.ENVIRONMENT
      IMAGE_VERSION      = var.IMAGE_VERSION
      instance_public_ip = aws_instance.web_app.public_ip
      GIT_TOKEN_MY       = var.GIT_TOKEN
    }
  )
  depends_on = [aws_instance.web_app]
}
