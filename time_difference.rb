def my_min(list)
    min = list.first
    list.each_with_index do |el, idx|
        list.each_with_index do |el_2, idx_2|
            if idx_2 > idx  
                if el > el_2 && el_2 < min
                    min = el_2
                elsif el < el_2 && el < min 
                    min = el
                end 
            end
        end
    end

    min

end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5
