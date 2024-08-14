variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "192.168.1.0/24"
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "192.168.2.0/24"
}

variable "ami_number" {
  description = "AMI number"
  type        = string
  default     = "ami-007c3072df8eb6584"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "web_app"
}

variable "vm_size" {
  description = "Size of the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "eu-central-1"
}

variable "ENVIRONMENT" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}

variable "IMAGE_VERSION" {
  description = "Version of the Docker image"
  type        = string
  default     = "55"
}

variable "docker_username" {
  type    = string
  default = "banigoden"
}

variable "image_name" {
  type    = string
  default = "ghcr.io/banigoden/web_app-ghcr"
}

variable "db_user" {
  type    = string
  default = "test1"
}

variable "db_pass" {
  type    = string
  default = "passdb"
}

variable "db_name" {
  type    = string
  default = "test_db"
}
