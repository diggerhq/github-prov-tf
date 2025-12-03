resource "github_repository" "demo" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = var.visibility

  auto_init      = true
  has_issues     = true
  has_wiki       = false
  has_downloads  = false
  has_projects   = false

  delete_branch_on_merge = true
}

resource "github_branch_default" "main" {
  repository = github_repository.demo.name
  branch     = "main"
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.demo.node_id
  pattern       = "main"

  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
  }

  enforce_admins = false
}
