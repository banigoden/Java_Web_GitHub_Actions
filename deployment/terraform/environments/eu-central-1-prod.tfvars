aws_region                = "eu-central-1"
ENVIRONMENT               = "prod"
vpc_cidr_block            = "10.0.0.0/16"
subnet_cidr_block         = "10.0.1.0/24"
private_subnet_cidr_block = "10.0.2.0/24"
ami_number                = "ami-0abcd1234efgh5678"  # Замените на актуальный AMI для продакшн
instance_name             = "web_app_prod"
vm_size                   = "t3.medium"  # Подберите размер в зависимости от ваших требований
IMAGE_VERSION             = "002"  # Обновите версию образа
