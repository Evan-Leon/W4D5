require "byebug"
#Brute Force 0(n^2)
def bad_two_sum?(arr, target_sum)

    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
           return true if arr[i] + arr[j] == target_sum
        end
    end
    false 
end



def okay_two_sum?(arr, target_sum)

end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false