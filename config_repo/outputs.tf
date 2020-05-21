output "environments" {
  value       = "${local.environments}"
  description = "A key-value collection of workspaces to environment variables. The keys map to Terraform workspaces, and the values are specific to an application, environment, and region."
}
