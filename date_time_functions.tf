output "formatdate" {
  value = formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", "2018-01-02T23:12:01Z")
}

output "timeadd" {
  value       = timeadd("2017-11-22T00:00:00Z", "10m")
  description = "both input and output date format are RFC 3389"
}

output "timestamp" {
  value = timestamp()
}
