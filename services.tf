variable "name" {
  type    = string
  default = "bar"
}

module "bar" {
  source = "git::git@ssh.dev.azure.com:v3/consilica/terraform-modules/ecs-service"
  #source          = "../terraform-modules/ecs-service"
  name_prefix     = var.name
  app             = "testapp"
  container_image = "085161355646.dkr.ecr.eu-central-1.amazonaws.com/${var.name}"
  container_name  = var.name
  cluster_name    = "fargate"
  # container doesn't have HTTPS endpoint
  lb_https_ports = {}
}

