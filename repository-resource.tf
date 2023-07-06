resource "github_repository" "terraform-repos" {
  name        = local.repo_name
  description = local.repo_description

  visibility = "public"
  has_issues = true
  auto_init  = true
}

resource "github_repository_file" "file-created" {
  repository          = local.repo_name
  branch              = "main"
  file                = ".gitignore"
  content             = "**/*.tfstate"
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@example.com"
  overwrite_on_create = true
  depends_on          = [github_repository.terraform-repos]
}

resource "github_issue" "first-issue" {
  repository = local.repo_name
  title      = "Terraform issue"
  body       = "this issue was created with terraform"
  depends_on = [github_repository.terraform-repos]
}