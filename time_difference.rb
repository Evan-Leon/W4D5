#Phase 1 0(n^2)
# def my_min(list)
#     min = list.first
#     list.each_with_index do |el, idx|
#         list.each_with_index do |el_2, idx_2|
#             if idx_2 > idx  
#                 if el > el_2 && el_2 < min
#                     min = el_2
#                 elsif el < el_2 && el < min 
#                     min = el
#                 end 
#             end
#         end
#     end

#     min

# end

#Phase 2 0(n) 

def my_min(list)
    min = list.first 

    list.each do |el|
        if el < min 
            min = el 
        end
    end
    min
end
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

#Phase 1 0(n^3)
# def largest_contiguous_subsum(list)
#     subarrs = []

#     list.each_with_index do |el1, i1|
#         (i1...list.length).each do |i2|
#             subarrs << list[i1..i2]
#         end
#     end
#     max = subarrs.first.sum  
#     subarrs.each do |subarr|
#         max = subarr.sum if subarr.sum > max 
#     end
#     max
# end

#Phase 2 0(n)
def largest_contiguous_subsum(list)
    max_sum = list.first
    current_sum = list.first
    
    (1...list.length).each do |i| 
        current_sum = 0 if current_sum < 0 
        current_sum += list[i]
        max_sum = current_sum if current_sum > max_sum
    end
    max_sum
end

list = [5, 3, -7]
p largest_contiguous_subsum(list)

 list = [2, 3, -6, 7, -6, 7] 
 p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

 list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
