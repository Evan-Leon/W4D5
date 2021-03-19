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

#Phase 2 0()
def second_anagram?(str_1, str_2)
    arr_1 = str_1.split("")
    arr_2 = str_2.split("")

    arr_1.each do |ele|
        idx = arr_2.find_index(ele)
        return false if idx.nil?
        arr_2.delete(arr_2[idx])
    end

    arr_2.empty?
end

#Phase 3 0(n log(n))
def third_anagram?(str_1, str_2)
    sorted_1 = str_1.split("").sort!
    sorted_2 = str_2.split("").sort!
    sorted_1 == sorted_2
    
end

#Phase 4 0(n)
def fourth_anagram?(str_1, str_2)
    new_has = Hash.new(0)
    str_1.each_char {|ele| new_has[ele]+= 1}
    str_2.each_char {|ele| new_has[ele]-= 1}
    new_has.all? {|k, v| v == 0}

end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true