class Array

    def my_uniq
        uniq_arr = []
        self.each do |ele|
            uniq_arr << ele unless uniq_arr.include?(ele)
        end
        uniq_arr
        # self.uniq
    end

    def two_sum
        arr = []
        i = 0
        while i < length
            j = 0
            while j < length
                arr << [i, j] if self[i] + self[j] == 0 && j > i 

                j += 1
            end
            i += 1
        end

        arr
        # hash = Hash.new(0)
        # arr = []
        # self.each_with_index do |n, i|
        #     if hash.has_key?(-n)
        #         arr << [hash[n], i]
        #     else
        #         hash[n] = i
        #     end
        # end
        # arr 
    end

end