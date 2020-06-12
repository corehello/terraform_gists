output "cidrhost" {
  value = cidrhost("192.168.0.0/18", 5)
}

output "cidrnetmask" {
  value = cidrnetmask("172.16.0.0/12")
}

output "cidrsubnet" {
  value       = cidrsubnet("172.16.0.0/12", 4, 2)
  description = <<EOF
cidrsubnet calculates a subnet address within given IP network address prefix.

cidrsubnet(prefix, newbits, netnum)
prefix must be given in CIDR notation, as defined in RFC 4632 section 3.1.

newbits is the number of additional bits with which to extend the prefix. For example, if given a prefix ending in /16 and a newbits value of 4, the resulting subnet address will have length /20.

netnum is a whole number that can be represented as a binary integer with no more than newbits binary digits, which will be used to populate the additional bits added to the prefix.

This function accepts both IPv6 and IPv4 prefixes, and the result always uses the same addressing scheme as the given prefix.

Unlike the related function cidrsubnets, cidrsubnet allows you to give a specific network number to use. cidrsubnets can allocate multiple network addresses at once, but numbers them automatically starting with zero.
EOF
}

output "cidrsubnets" {
  value = cidrsubnets("10.1.0.0/16", 4, 4, 8, 4)
}
