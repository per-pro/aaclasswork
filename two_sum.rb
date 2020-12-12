def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |el1, idx1|
        arr.each_with_index do |el2, idx2|
            return true if idx2 > idx1 && el1 + el2 == target_sum
        end
    end
    false
end

#O(n**2) -- quadratic time

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false

def okay_two_sum?(arr, target_sum)
    sorted = arr.sort #O(nlogn)
    idx = 0
    sorted.each_with_index {|num, i| idx = i if num < target_sum} #O(n)
    (0...idx).each {|i| return true if sorted[i] + sorted[i+1] == target_sum} #O(n)
    return false
end

def two_sum?(arr, target_sum)
    hash = Hash.new(0)
    arr.each_with_index {|ele, idx| hash[idx] = ele}
    # hash.values.any? would this iterate twice?
    
    hash.any? {|k, v| target_sum - v}
end

p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

