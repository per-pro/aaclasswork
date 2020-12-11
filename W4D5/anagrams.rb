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

# p first_anagram?("elvis", "lives")    #=> true

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

p second_anagram?("elvis", "lives")    #=> true
p second_anagram?("trump", "winner")    #=> false