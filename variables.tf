variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

variable "github_owner" {
  description = "GitHub username or organization"
  type        = string
}

variable "repo_name" {
  description = "Repository name"
  type        = string
  default     = "python-docker-ci"
}
