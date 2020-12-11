def first_anagram?(string1, string2) #O(n!)
    #string split
    #shuffled string.permutation.to_a
    #string is included in shuffled
    arr = string1.split("")
    poss_combinations = arr.permutation.to_a
    # p poss_combinations
    poss_combinations.each {|word| return true if word.join("") == string2 }
    return false
end

# p first_anagram?("barbiedoll", "illbarebod")    #=> true
# Cubic
def second_anagram?(string1, string2)
    arr = string2.split("")
    string1.each_char do |char|
        if !arr.find_index(char).nil?
            idx = arr.find_index(char)
            arr[idx] = ""
        end
    end
    return true if arr.join("") == ""
    false
end

# p second_anagram?("barbiedoll", "illbarebod")    #=> true
# p second_anagram?("trump", "winner")    #=> false
#loglinear beacuse sort uses quicksort
def third_anagram?(string1, string2)
    string1.split("").sort == string2.split("").sort 
end

# p third_anagram?("barbiedoll", "illbarebod")    #=> true
# p third_anagram?("trump", "winner")    #=> false
#O(n) -- linear time
def fourth_anagram?(string1, string2)
    hash = Hash.new(0)

    string1.each_char {|char| hash[char] += 1}
    string2.each_char {|char| hash[char] -= 1}
    hash.all? {|k,v| v.zero?}

end

p fourth_anagram?("barbiedoll", "illbarebod")    #=> true
p fourth_anagram?("trump", "winner")    #=> false#