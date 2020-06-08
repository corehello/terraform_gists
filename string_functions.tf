output "chomp" {
  value       = chomp("hello\n\r\n")
  description = "Remove newline characters at the end of a string"
}

output "format" {
  value = format("%%, %v, %#v, %t, %b, %d, %o, %x, %X, %e, %E, %9.8f, %g, %G, %s, %q", "%v - type infer", { key = "value" }, true, 255, 255, 255, 255, 255, 1234567890, 1234567890, 123.456, 1234567890, 1234567890, "convert to string", "this is just a test")
}

output "formatlist" {
  value = formatlist("%s => %s", ["key1", "key2", "key3"], ["value1", "value2", "value3"])
}

output "formatlist2" {
  value = formatlist("%s => %s", "Hello", ["Alice", "Bob", "Eve"])
}

output "indent" {
  value       = indent(2, "[\n  foo,\n  bar,\n]\n")
  description = "Add a given number of spaces to the beginnings of al but the first line in a given multi-line string."
}

output "join" {
  value = join(", ", ["foo", "bar", "baz"])
}

output "lower" {
  value = lower("HeLLo!")
}

output "regex" {
  value = regex("^(?:(?P<scheme>[^:/?#]+):)?(?://(?P<authority>[^/?#]*))?", "https://terraform.io/docs/")
}

output "regexall" {
  value = regexall("[a-z]+", "1234abcd5678efgh9")
}

output "replace" {
  value = replace("hello world", "/w.*d/", "everybody")
}

output "split" {
  value = split(",", "foo,bar,baz")
}

output "strrev" {
  value       = strrev("hello")
  description = "strrev reverses the cahracters in a string."
}

output "substr" {
  value = substr("hello world", 1, 4)
}

output "title" {
  value       = title("hello world")
  description = "title converts the first letter of each word in the given string to uppercase"
}

output "trim" {
  value       = trim("?!hello?!", "?!")
  description = "trim removes the specified characters from the start and end of the given string"
}

output "trimprefix" {
  value = trimprefix("helloworld", "hello")
}


output "trimsuffix" {
  value = trimsuffix("helloworld", "world")
}

output "trimspace" {
  value = trimspace(" a b c d e \n\r\n")
}

output "upper" {
  value = upper("hEllO!")
}
