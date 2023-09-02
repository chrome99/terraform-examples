variable "env_vars" {
  description = "Content of .env files"
  type        = map(string)
  default = {
    dev     = "username=ezra\npassword=12345\nport=8080",
    staging = "username=test\npassword=67890\nport=9090",
    prod    = "username=test2\npassword=abcdef\nport=7070"
  }
}

resource "local_file" "env" {
  for_each = var.env_vars

  filename = ".env-${each.key}"
  content  = each.value
}

output "env_file_count" {
  value = length(local_file.env)
}
