resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}

resource "local_file" "bar" {
  count    = 1
  content  = "bar${count.index}"
  filename = "${path.module}/foo.bar${count.index}"
  depends_on = [
    local_file.foo,
  ]
}

resource "local_file" "foobar" {
  for_each = {
    filename1 = "content1"
    filename2 = "content2"
  }
  content  = each.value
  filename = each.key
}
