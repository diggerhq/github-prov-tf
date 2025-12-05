variable "repository_name" {
  description = "Name of the GitHub repository to create"
  type        = string
  default     = "demo-repo-002"
}

variable "repository_description" {
  description = "Description of the repository"
  type        = string
  default     = "001 Updated Description"
}

variable "visibility" {
  description = "Repository visibility (public or private)"
  type        = string
  default     = "private"
}
