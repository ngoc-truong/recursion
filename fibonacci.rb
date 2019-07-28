# Fibonnaci - as a recursive and an iterative function
# Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

def fibs_rec(num)
    return array = [] if num < 2
    return array = [0, 1] if num == 2

    array = fibs_rec(num - 1)
    array << array[num - 2] + array[num - 3]

    array    
end

def fibs(num)
    array = [] 

    num.times do |num|
        if num < 2 
            array << num
        else 
            array << array[num - 1] + array[num - 2]
        end
    end

    array
end


# Testing
puts fibs_rec(2).inspect
puts fibs_rec(3).inspect
puts fibs_rec(4).inspect
puts fibs_rec(5).inspect
puts fibs_rec(6).inspect
puts fibs_rec(23).inspect

puts fibs(2).inspect
puts fibs(3).inspect
puts fibs(4).inspect
puts fibs(5).inspect
puts fibs(6).inspect
puts fibs(23).inspect
