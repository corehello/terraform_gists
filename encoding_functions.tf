output "base64decode" {
  value = base64encode("SGVsbG8gV29ybGQ=")
}

output "base64encode" {
  value = base64encode("Hello World")
}

output "base64gzip" {
  value       = base64gzip("Hello World")
  description = "base64gzip compresses a string with gzip and then encodes the result in Base64 encoding."
}

output "csvdecode" {
  value = csvdecode("a,b,c\n1,2,3\n4,5,6")
}

output "jsondecode" {
  value = jsondecode("{\"hello\": \"world\"}")
}

output "jsonencode" {
  value = jsonencode({ "hello" = "world" })
}

output "urlencode" {
  value = urlencode("Hello!@#$%^&*()'<>':;,. World")
}

output "yamldecode" {
  value = yamldecode("{a: &foo [1, 2, 3], b: *foo}")
}

output "yamlencode" {
  value = yamlencode({ "foo" : [1, { "a" : "b", "c" : "d" }, 3], "bar" : "baz" })
}
