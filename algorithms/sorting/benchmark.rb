require 'benchmark'
require_relative 'quick_sort'
require_relative 'heap_sort'
require_relative 'bucket_sort'
require_relative 'insertion_sort'
require_relative 'selection_sort'
require_relative 'bubble_sort'
require_relative 'merge_sort'

array = []
0.upto(5000000) do |n|
  array.push(n)
end
array.shuffle!

puts Benchmark.measure {
  quick_sort(array)
}

puts Benchmark.measure {
  heap_sort(array)
}

puts Benchmark.measure {
  bucket_sort(array)
}

puts Benchmark.measure {
  insertion_sort(array)
}

puts Benchmark.measure {
  selection_sort(array)
}

puts Benchmark.measure {
  bubble_sort(array)
}

puts Benchmark.measure {
  merge_sort(array)
}
