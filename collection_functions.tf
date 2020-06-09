output "chunklist" {
  value       = chunklist(["a", "b", "c", "d", "e"], 2)
  description = "chunklist splits a single list into fixed-size chunks, returning a list of lists"
}

output "coalesce" {
  value       = coalesce("", "a", ["b", "c"]...)
  description = "coalesce takes any number of arguments and returns the first one that isn't null or an empty string, all arguments should be same type"
}

output "coalescelist" {
  value       = coalescelist([], coalescelist(["a", "b"], ["c", "d"]))
  description = "coalescelist takes any numberof list arguments and returns the first one that isn't empty"
}

output "compact" {
  value       = compact(["a", "", "b", "c"])
  description = "compact takes a list of strings and returs a new list with any empty string elements removed"
}

output "concat" {
  value       = concat(["a", ""], ["c", "d"])
  description = "concat takes two or more lists and combines them info a single list"
}

output "contains" {
  value       = contains(["a", "b", "c"], "a")
  description = "contains determines whether a given list or set contains a given single value as one ofd its elements"
}

output "distinct" {
  value       = distinct(["a", "b", "a", "c", "d", "b"])
  description = "distinct takes a list and returns a new list with any duplicate elements removed"
}

output "element" {
  value       = element(["a", "b", "c"], 1)
  description = <<EOF
element retrieves a single element from a list. 
The index is zero-based. 
Error will be raise if with an empty list. 
Index will be wrapped around by taking the index modulo the length of the list.
EOF
}

output "flatten" {
  value       = flatten([["a", "b"], [], ["c"]])
  description = "flatten takes a list and replaces any elements that are lists with a flattened sequence of the list contents"
}

output "index" {
  value       = index(["a", "b", "c"], "b")
  description = "index finds the element index for a given vaule in a list"
}

output "keys" {
  value       = keys({ a = 1, b = 2, c = 3 })
  description = "keys takes a map and returns a list ocntaining the keys from that map. the list will be in lexicographical order."
}

output "length" {
  value       = format("%s, %s, %s, %s", length([]), length(["a", "b"]), length({ "a" = "b" }), length("hello"))
  description = "length determines the length of a given list, map, or string"
}

output "list" {
  # value = list("a", "b", "c")
  value       = ["a", "b", "c"]
  description = "this function is deprecated from v0.12"
}

output "lookup" {
  value       = lookup({ a = "ay", b = "bee" }, "c", lookup({ a = "ay", b = "bee" }, "a", "what?"))
  description = "lookup retrieves the values of a single element from a map, given its key. If the given key does not exist, the give default value is returned instead"
}

output "map" {
  # value = map("a", "b", "c", "d")
  value       = { "a" = "b", "c" = "d" }
  description = "map function is deprecated from v0.12"
}

output "matchkeys" {
  value       = matchkeys(["i-123", "i-abc", "i-def"], ["us-west", "us-east", "us-east"], ["us-east"])
  description = <<EOF
matchkeys constructs a new list by taking a subset of elements from one list whose indexes match the corresponding indexes of values in another list.

matchkeys(valueslist, keyslist, searchset)

valueslist and keyslist must have same length.
The ordering of the values in valueslist is preserved in the result.
EOF
}

output "merge" {
  value       = merge({ "a" = "b", "c" = "d" }, { "e" = "f", "c" = "z" })
  description = "merge takes an arbitrary number of maps and returns a single map that contains a merged set of elements from all the maps."
}

output "range" {
  value       = [range(3), range(1, 4), range(1, 8, 2), range(1, 4, 0.7), range(4, 1), range(10, 5, -2)]
  description = <<EOF
range generates a list of numbers using a start value, a limit value, and a step value.

range(max)
range(start, limit)
range(start, limit, step)

Because the sequence is created as a physical list in memory, Terraform imposes an artificial limit of 1024 numbers in the resulting sequence in order to avoid unbounded memory usage if, for example, a very large value were accidentally passed as the limit or a very small value as the step. If the algorithm above would append the 1025th number to the sequence, the function immediately exits with an error.

We recommend iterating over existing collections where possible, rather than creating ranges. However, creating small numerical sequences can sometimes be useful when combined with other collections in collection-manipulation functions or for expressions.
EOF
}

output "reverse" {
  value = reverse([1, 2, 3])
}

output "setintersection" {
  value       = setintersection(["a", "b"], ["b", "c"], ["b", "d"])
  description = "The setintersection function takes multiple sets and produces a single set containing only the elements that all of the given sets have in common. In other words, it computes the intersection of the sets."
}

output "setproduct" {
  value       = setproduct(["development", "staging", "production"], ["app1", "app2"])
  description = "The setproduct function finds all of the possible combinations of elements from all of the given sets by computing the Cartesian product."
}

output "setsubtract" {
  value       = setsubtract(["a", "b", "c"], ["a", "c"])
  description = "The setsubtract function returns a new set containing the elements from the first set that are not present in the second set. In other words, it computes the relative complement of the first set in the second set."
}

output "setunion" {
  value       = setunion(["a", "b"], ["b", "c"], ["d"])
  description = "The setunion function takes multiple sets and produces a single set containing the elements from all of the given sets. In other words, it computes the union of the sets."
}

output "slice" {
  value       = slice(["a", "b", "c", "d"], 1, 3)
  description = <<EOF
slice extracts some consecutive elements from within a list.

slice(list, startindex, endindex)
startindex is inclusive, while endindex is exclusive. This function returns an error if either index is outside the bounds of valid indices for the given list.
EOF
}

output "sort" {
  value       = sort(["e", "d", "a", "x"])
  description = "sort takes a list of strings and returns a new list with those strings sorted lexicographically."
}

output "transpose" {
  value       = transpose({ "a" = ["1", "2"], "b" = ["2", "3"] })
  description = "transpose takes a map of lists of strings and swaps the keys and values to produce a new map of lists of strings."
}

output "values" {
  value = values({ a = 3, c = 2, d = 1 })
}

output "zipmap" {
  value       = zipmap(["a", "b"], [1, 2])
  description = <<EOF
zipmap constructs a map from a list of keys and a corresponding list of values.

zipmap(keyslist, valueslist)
Both keyslist and valueslist must be of the same length. keyslist must be a list of strings, while valueslist can be a list of any type.

Each pair of elements with the same index from the two lists will be used as the key and value of an element in the resulting map. If the same value appears multiple times in keyslist then the value with the highest index is used in the resulting map.
EOF
}
