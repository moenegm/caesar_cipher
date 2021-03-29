def bubble_sort(array)

    while array != array.sort
        sort(array)
    end
    
    return array
end

def sort(array)
    i = 0
    sorted = true

    while sorted 
                if  array[i+1] != nil && array[i] > array[i+1]
                    array[i], array[i+1] = array[i+1], array[i]
                    sorted = false
                end                
            i += 1
    end
    
    return array
end

print bubble_sort([4,3,78,2,0,2])