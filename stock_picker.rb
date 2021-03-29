def stock_picker(array)
    
    sorted_arr = array.sort  #sorting the array in a temp sorted array
    i = 0 
    
    while i < array.length
        if array.index(sorted_arr[-1]) > array.index(sorted_arr[0]) #if the index of the largest number is greater then the index of the smaller number, it means that the smaller came first which means you can buy it first
            return [sorted_arr[0], sorted_arr[-1]]
        else #if the largest number came before the smallest number then remove the largest and smallest and try the next pair
            sorted_arr.pop
            sorted_arr.shift
        end
        i+=1
    end
end


print stock_picker([17,3,6,9,15,8,6,1,10]) 