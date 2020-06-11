output "base64sha256" {
  value       = base64sha256("hello world")
  description = "input -> sha256 -> base64encode -> output"
}

output "base64sho512" {
  value       = base64sha512("hello world")
  description = "input -> sha512 -> base64encode -> output"
}

output "bcrypt" {
  value       = bcrypt("hello world", 10)
  description = "bcrypt computes a hash of the given string using the Blowfish cipher, returning a string in the Modular Crypt Format usually expected in the shadow password file on many Unix systems."
}

output "filebase64sha256" {
  value       = filebase64sha256("${path.module}/terraform.tf")
  description = "input -> file -> sha256 -> base64encode -> output, file content only UTF-8 text"
}

output "filebase64sha512" {
  value       = filebase64sha512("${path.module}/terraform.tf")
  description = "input -> file -> sha512 -> base64encode -> output, file content only UTF-8 text"
}

output "filemd5" {
  value       = filemd5("${path.module}/terraform.tf")
  description = "input -> file -> md5 -> output, file content only UTF-8 text"
}

output "filesha1" {
  value       = filesha1("${path.module}/terraform.tf")
  description = "input -> file -> sha1 -> output, file content only UTF-8 text"
}

output "filesha256" {
  value       = filesha256("${path.module}/terraform.tf")
  description = "input -> file -> sha256 -> output, file content only UTF-8 text"
}

output "filesha512" {
  value       = filesha512("${path.module}/terraform.tf")
  description = "input -> file -> sha512 -> output, file content only UTF-8 text"
}
