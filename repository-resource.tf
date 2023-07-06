resource "github_repository" "terraform-repos" {
  name        = local.repo_name
  description = local.repo_description

  visibility = "public"
  has_issues = true
  auto_init  = true
}

resource "github_repository_file" "file-created" {
  for_each            = local.init_files
  repository          = local.repo_name
  branch              = "main"
  file                = each.key
  content             = each.value
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@example.com"
  overwrite_on_create = true
  depends_on          = [github_repository.terraform-repos]
}

resource "github_issue" "first-issue" {
  repository = local.repo_name
  count      = 3
  title      = "Terraform issue ${count.index}"
  body       = "this issue was created with terraform ${count.index}"
  depends_on = [github_repository.terraform-repos]
}