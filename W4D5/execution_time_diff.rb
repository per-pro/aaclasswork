require "byebug"

def my_min(list)
    min = list.first
    list.each { |el| min = el if min > el }
    min
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# def largest_contiguous_subsum(list)
#     arr = []
#     x = 0
#     while x < list.length
#         # debugger
#         y = x 
#         while y < list.length 
#             arr << list[x..y]
#             y += 1
#         end
#         x += 1
#     end
#     max_subsum = arr.first.sum
#     arr.each {|subarr| max_subsum = subarr.sum if subarr.sum > max_subsum}
#     max_subsum
# end

def largest_contiguous_subsum(list)
    overall_sum = 0
    until list.empty?
        current_sum = list.sum
        overall_sum = current_sum if current_sum > overall_sum
        
        list.shift
    end
    overall_sum
end

list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

def largest_contiguous_subsum(list)
    helper_arr = [list.first]
    (1...list.length).each do |idx|
        if helper_arr[-1] + list[idx] > list[idx]
            helper_arr << helper_arr[-1] + list[idx]
        else
            helper_arr << list[idx]
        end
    end
    helper_arr.max
end

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])