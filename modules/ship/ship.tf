variable "ship_content" {
  description = "Content of ship asci file"
  type        = string
  default = <<-EOC
               ____
              ---|
  \/            /|     \/
               / |\
              /  | \        \/
             /   || \
            /    | | \
           /     | |  \
          /      | |   \
         /       ||     \
        /        /       \
       /________/         \
       ________/__________--/
 ~~~   \___________________/
         ~~~~~~~~~~       ~~~~~~~~
~~~~~~~~~~~~~     ~~~~~~~~~
                               ~~~~~~~~~
  EOC
}

resource "local_file" "env" {
  filename = "ship.txt"
  content  = var.ship_content
}
