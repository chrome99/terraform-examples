resource "local_file" "example" {
  filename = "example.txt"
  content  = "This is the content of the file."
}

resource "local_file" "example_dep" {
  filename = "example_dep.txt"
  content  = local_file.example.content
}

resource "local_file" "example_dep_2" {
  filename = "example_dep_2.txt"
  content  = "This is the content of example_dep_2.txt"

  depends_on = [local_file.example]
}