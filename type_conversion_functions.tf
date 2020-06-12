locals {
  foo = { "bar" = "baz" }
}

output "can_true" {
  value = can(local.foo.bar)
}

output "can_false" {
  value = can(local.foo.boop)
}

output "tobool" {
  value       = tobool("true")
  description = <<EOF
Only boolean values and the exact strings "true" and "false" can be converted to boolean. All other values will produce an error.
EOF
}

output "tolist" {
  value = tolist(["a", "b", 4])
}

output "tomap" {
  value = tomap({ a = "a", b = "b" })
}

output "tonumber" {
  value = tonumber("123456")
}

output "toset" {
  value = toset(["a", "b", 4])
}

output "tostring" {
  value       = tostring(true)
  description = <<EOF
Only the primitive types (string, number, and bool) can be converted to string. All other values will produce an error.
EOF
}

output "try" {
  value = try(local.foo.nonexint, "local.foo have no item named nonexint")
}
