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

output "md5" {
  value = md5("hello world")
}

/*
resource "tls_private_key" "tpk" {
  algorithm = "RSA"
  rsa_bits  = 2048
  provisioner "local-exec" {
    command = "echo -n ${tls_private_key.tpk.public_key_pem} > public.key && echo -n 'hello world' | openssl rsautl -encrypt -pubin -inkey public.key > ciphertext"
  }
}

output "rsadecrypt" {
  value = rsadecrypt(filebase64("${path.module}/ciphertext"), tls_private_key.tpk.private_key_pem)
}
*/

output "sha1" {
  value = sha1("hello world")
}

output "sha256" {
  value = sha256("hello world")
}

output "sha512" {
  value = sha512("hello world")
}

output "uuid" {
  value       = uuid()
  description = "RFC 4122 seciton 4.4, Verison 4 UUID"
}

output "uuidv5_dns" {
  value = uuidv5("dns", "www.terraform.io")
}

output "uuidv5_url" {
  value = uuidv5("url", "https://www.terraform.io/")
}

output "uuidv5_oid" {
  value = uuidv5("oid", "1.3.6.1.4")
}

output "uuidv5_x500" {
  value = uuidv5("x500", "CN=Example,C=GB")
}

output "uuidv5_raw_ns" {
  value = uuidv5("743ac3c0-3bf7-4a5b-9e6c-59360447c757", "LIBS:diskfont.library")
}
