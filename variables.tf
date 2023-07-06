variable "access_token" {
  default     = "token"
  type        = string
  sensitive   = true
  description = "github access token"
}

variable "repo_name" {
  type        = string
  default     = "some-repo"
  description = "name of repository"
}

variable "repo_owner" {
  type        = string
  default     = "some-owner"
  description = "owner of repository"
}

variable "repo_description" {
  type        = string
  default     = "this repo was created with terraform"
  description = "description of repository"
}