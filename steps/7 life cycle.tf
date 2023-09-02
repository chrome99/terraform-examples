resource "local_file" "hello_world" {
    filename = "hello world.txt"
    content = "hello world!"
    lifecycle {
        create_before_destroy = true
        # prevent_destroy = true
        # ignore_changes = [
        #     content
        # ]
    }
}
