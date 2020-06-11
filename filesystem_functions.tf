output "abspath" {
  value = abspath(path.root)
}

output "dirname" {
  value = dirname("a/b/c/d/e/f")
}

output "pathexpand" {
  value = pathexpand("~/.ssh/id_rsa")
}

output "basename" {
  value = basename("a/b/c/d/e/f")
}

output "file" {
  value = file("${path.module}/terraform.tf")
}

output "fileexists" {
  value = "${path.module}/terraform.tf"
}

output "fileset" {
  value = fileset(path.module, "*.tf")
}

output "filebase64" {
  value = filebase64("${path.module}/terraform.tf")
}

output "templatefile" {
  value = templatefile("${path.module}/backends.tmpl", { port = 8080, ip_addrs = ["10.0.0.1", "10.0.0.2"] })
}
