output "repository_url" {
  description = "URL of the created repository"
  value       = github_repository.demo.html_url
}

output "repository_clone_url" {
  description = "Git clone URL (HTTPS)"
  value       = github_repository.demo.http_clone_url
}

output "repository_ssh_url" {
  description = "Git clone URL (SSH)"
  value       = github_repository.demo.ssh_clone_url
}
