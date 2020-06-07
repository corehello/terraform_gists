output "abs" {
  value = abs(-12)
}

output "ceil" {
  value = ceil(5.1)
}

output "floor" {
  value = floor(4.9)
}

output "log" {
  value = log(16, 2)
}

output "max" {
  # value = min(1, 2, 3)
  value = max([1, 2, 3]...)
}

output "min" {
  # value = min(1, 2, 3)
  value = min([1, 2, 3]...)
}

output "parseint" {
  # The base must be between 2 and 62 inclusive.
  value = parseint("FF", 16)
}

output "power" {
  value = pow(3, 2)
}

output "signum" {
  # signum return value is -1 or 0 or 1
  value = signum(-13)
}
