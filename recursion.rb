def append(array, n)
    #base case
    return array if n < 0

    array << n
    append(array, n - 1)
end

puts append([], -1).inspect # => [0]
puts append([], 0).inspect # => [0]
puts append([], 1).inspect # => [1, 0]
puts append([], 2).inspect # => [2, 1, 0]
puts append([], 3).inspect # => [3, 2, 1, 0]


def reverse_append(array, n)
    return array if n < 0

    array.unshift(n)
    reverse_append(array, n - 1)
end

puts reverse_append([], -1).inspect # => [0]
puts reverse_append([], 0).inspect  # => [0]
puts reverse_append([], 1).inspect  # => [0, 1]
puts reverse_append([], 2).inspect  # => [0, 1, 2]

