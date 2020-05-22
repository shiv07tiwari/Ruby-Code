# Remove duplicates from a sorted array

def remove_duplicates(*array)
    n = array.length
    (0..n-2).each do |i|
        if array[i] == array[i+1]
            array[i] = nil
        end
    end
    array = array.compact()
    array
end

p remove_duplicates(1,2,2,2,3,4,5,5,6,7,7,7)