require "byebug"
#phase 1 O(n!)

def anagram?(str_1, str_2)

    my_permutation(str_1).include?(str_2)

end

def my_permutation(str_1)
    return [str_1] if str_1.length <= 1
    previou = my_permutation(str_1[0...-1])
    new_arr = []

    previou.each do |word|
        (0..word.length).each do |i|
            new_arr << word.dup.insert(i, str_1[-1])
        end
    end
    new_arr
end

# p my_permutation("gizmo")
# p my_permutation("elvis").include?("lives")

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true