variable "name" {
  type    = string
  default = "bar"
}

module "bar" {
  source          = "../terraform-modules/ecs-service"
  name_prefix     = var.name
  app             = "app"
  container_image = "###REPLACE WITH ECR REPO URL###"
  container_name  = var.name
  cluster_name    = "foo"
  # container doesn't have HTTPS endpoint
  lb_https_ports = {}
}

