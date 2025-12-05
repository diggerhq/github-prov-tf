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

  # Merge strategies - at least one must be enabled
  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true

  # Commit message settings (must be valid combinations)
  squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
  squash_merge_commit_message = "COMMIT_MESSAGES"
  merge_commit_title          = "MERGE_MESSAGE"
  merge_commit_message        = "PR_TITLE"
}

resource "github_branch_default" "main" {
  repository = github_repository.demo.name
  branch     = "main"
}

