locals {
  list = ["a", "b"]
}
output "for" {
  value = [for s in local.list : upper(s)]
}

output "splat" {
  value = join("/", local.list[*])
}

