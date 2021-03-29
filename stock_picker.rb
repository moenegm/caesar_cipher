def stock_picker(array)
    
    sorted_arr = []
    answer = []
    sorted_arr = array.sort 
    i = 0
    
    while i < array.length
        if array.index(sorted_arr[-1]) > array.index(sorted_arr[0])
            return answer << sorted_arr[0] << sorted_arr[-1]
        else
            sorted_arr.pop
            sorted_arr.shift
        end
        i+=1
    end
end


print stock_picker([17,3,6,9,15,8,6,1,10])