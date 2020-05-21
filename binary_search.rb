def binary_search(arr, val)
    low = 0
    high = arr.length - 1

    while (low <= high)
        mid = low + (high-low)/2

        if arr[mid] == val
            return mid
        elsif arr[mid] < val
            low = mid + 1
        else
            high = mid - 1
        end
    end

    return "Not found"
end

p binary_search([1,2,3,4,5,6,7,8], 9)