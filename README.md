## Fargate ECS Service "bar"

This is an example how to deploy the angularJS service "bar"
to cluster "foo" that's living in the application namespace "app".

This can be used as a template when deploying new services.

## Functionality
- Terraform S3 remote backend
- AWS ECS resource creation (ECS Service, Task Definition, ALB, Service Discovery, Logs)
- Azure DevOps example pipeline (azure-pipelines.yml)

## Requirements

[Terraform](https://www.terraform.io/downloads.html) installed
AWS Credentials

## Usage
`terraform init`

`terraform apply`

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | n/a | `string` | `"bar"` | no |

## Outputs

No output.

