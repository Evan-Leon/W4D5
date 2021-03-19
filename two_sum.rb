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



# def okay_two_sum?(arr, target_sum)
#     # return false if arr.length < 2
#     # return true if arr[0] + arr[1] == target_sum && arr.length == 2
#     # pivot = arr[0]

#     # mid_ele = arr[mid]

#     # left = okay_two_sum?(arr[0...mid], target_sum)
#     # right = okay_two_sum?(arr[mid..-1], target_sum)

#     # left || right 

#     return false if arr.length == 1 && arr[0] != target_sum 
#     return true if arr[0] == target_sum

#     mid = arr.length / 2
        
#     if  target_sum - arr[mid] < arr[mid]
#         return okay_two_sum?(arr[0...mid], target_sum)
#     else 
#         return okay_two_sum?(arr[mid+1..-1], target_sum)
#     end

# end

def two_sum?(arr, target_sum)
    complements = {}
  
    arr.each do |el|
        p el
      return true if complements[target_sum - el]
      complements[el] = true
      p complements
    end
  
    false
  end
arr = [0, 1, 3, 5, 7]
p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false