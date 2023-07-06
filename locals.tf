locals {
  repo_full_name   = "${var.repo_owner}/${var.repo_name}"
  repo_owner       = var.repo_owner
  repo_name        = var.repo_name
  repo_description = var.repo_description
  access_token     = var.access_token
}