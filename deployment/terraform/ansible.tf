
resource "local_file" "inventory" {
  filename        = "${path.module}./ansible/inventory/ansible-inventory"
  file_permission = "0640"
  content = templatefile("${path.module}/templates/inventory.tftpl",
    {
      AWS_REGION         = var.aws_region
      ENVIRONMENT        = var.ENVIRONMENT
      IMAGE_VERSION      = var.IMAGE_VERSION
      instance_public_ip = aws_instance.web_app.public_ip
      docker_username    = var.docker_username
      image_name         = var.image_name
      db_user            = var.db_user
      db_pass            = var.db_pass
      db_name            = var.db_name
    }
  )
  depends_on = [aws_instance.web_app]
}
