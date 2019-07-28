def merge_sort(array)
    if array.size < 2 
        return array
    else 
        # Split arrays into halves
        half = array.size / 2 - 1
        left = merge_sort(array[0..half])
        right = merge_sort(array[half + 1..-1])

        # merge both halves together
        merge(left, right)
    end 
end


def merge(left, right)
    result = []
    pointer_left = 0
    pointer_right = 0

    # Compare the two numbers at the pointers
    while left.size > pointer_left && right.size > pointer_right
        if left[pointer_left] < right[pointer_right]
            result << left[pointer_left]
            pointer_left += 1
        else 
            result << right[pointer_right]
            pointer_right += 1
        end
    end

    # Take the rest of one of the arrays and append it to result
    if left.size > pointer_left 
        left[pointer_left..-1].each { |num| result << num }
    elsif right.size > pointer_right 
        right[pointer_right..-1].each { |num| result << num }
    end
    
    result 
end

puts merge_sort([0]).inspect
puts merge_sort([1, 2]).inspect
puts merge_sort([5, 2, 9, 8]).inspect
puts merge_sort([5, 10, 6, 8, 9, 13, 7, 9, 10]).inspect
