variable "env_vars" {
  description = "Content of .env files"
  type        = string
  default     = <<-EOT
    username=ezra
    password=12345
    port=8080
  EOT
}

resource "local_file" "env" {
    count =  3
    filename = ".env${count.index + 1}"
    content = var.env_vars
}

output "env_file_count" {
  value = length(local_file.env)
}