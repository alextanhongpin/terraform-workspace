locals {
  env = "${terraform.workspace}"

  // Isolate variables used for different workspaces
  // using map
  filename = {
    default = "${var.filename}-dev.txt"
    dev = "${var.filename}-dev.txt"
    prod = "${var.filename}-prod.txt"
  }

  name = "${lookup(local.filename, local.env)}"
}

// Creates a new local file with the given filename and content
resource "local_file" "test" {
  content     = "${local.env}"
  filename = "${path.module}/${local.name}"
}