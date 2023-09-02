resource "local_file" "env" {
    filename = ".env"
    content = var.env_vars
}
variable "env_vars" {
    description = "content of hello world.txt"
    type = string
    default = <<-EOT
    username=ezra
    password=12345
    port=8080
    EOT
}