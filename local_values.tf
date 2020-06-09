locals {
  string = "string"
  number = 1
  bool   = true
}

output "local_string" {
  value = local.string
}

output "local_number" {
  value = local.number
}

output "local_bool" {
  value = local.bool
}
locals {
  list_string = ["item1", "item2", "item3"]
  set_string  = ["item1", "item2", "item3"]
  map_string = {
    "key1" = "value1"
    "key2" = 1
    "key3" = false
  }
  object = {
    key1 = "aoeu"
    key2 = 0
  }
}

output "local_list_string" {
  value = local.list_string
}

output "local_set_string" {
  value = local.set_string
}

output "local_map_string" {
  value = local.map_string
}

output "local_object" {
  value = local.object
}
