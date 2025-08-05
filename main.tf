terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

resource "github_repository" "python_docker_repo" {
  name        = var.repo_name
  description = "Python + Docker project with GitHub Actions CI"
  visibility  = "public"
  auto_init   = true
  topics      = ["python", "docker", "terraform", "ci"]
}

resource "github_repository_file" "ci_workflow" {
  repository          = github_repository.python_docker_repo.name
  file                = ".github/workflows/python-ci.yml"
  content             = file("${path.module}/python-ci.yml")
  branch              = "main"
  commit_message      = "Add GitHub Actions Docker-based CI"
  overwrite_on_create = true
}
