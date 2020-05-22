def bubble_sort(array)
    t = Time.now
    return array if array.size < 2
    swap = true
    loop do
        swap = false
        (array.length - 1).times do  |x|
            if array[x] > array[x+1]
                array[x], array[x+1] = array[x+1], array[x]
                swap = true
            end
        end
        break if swap == false
    end
    t = Time.now - t
    p "Time taken : %f" % t
    array
end

def insertion_sort(array)
    t = Time.now
    (array.length).times do |j|
      while j > 0
        if array[j-1] > array[j]
          array[j], array[j-1] = array[j-1], array[j]
        else
          break
        end
        j-=1
      end
    end
    t = Time.now - t
    p "Time taken : %f" % t
    array
  end


def merge(arr, left, mid, right)
    sizeLeft = mid - left + 1
    sizeRight  = right - mid
    leftArr = Array.new(sizeLeft)
    rightArr = Array.new(sizeRight)

    (0..sizeLeft-1).each do |i|
        leftArr[i] = arr[left + i]
    end
    (0..sizeRight-1).each do |i|
        rightArr[i] = arr[mid + 1 + i]
    end
    
    i = 0
    j = 0
    k = left

    loop do
        if leftArr[i] <= rightArr[j]
            arr[k] = leftArr[i]
            i += 1
        else
            arr[k] = rightArr[j]
            j += 1
        end
        k += 1
        break if (i >= sizeLeft || j >= sizeRight)
    end
    
    (i..sizeLeft-1).each do |p|
        arr[k] = leftArr[p]
        p += 1
        k += 1
    end
    (j..sizeRight-1).each do |p|
        arr[k] = rightArr[p]
        p += 1
        k += 1
    end
end

def merge_sort(array, left, right)
    if left < right
        mid = left + (right - left)/2

        merge_sort(array, left, mid)
        merge_sort(array, mid + 1, right)
        merge(array, left, mid, right)
    end
    array
end

def selection_sort (array)
    n = array.length
    n.times do |i|
        min = i
        (i+1..(n-1)).each do |j|
            if array[j] < array[min]
                min = j
            end
        end
        array[min], array[i] = array[i], array[min]
    end
    array
end


p bubble_sort([3,1,5,2,8,6,4,7])
p insertion_sort([3,1,5,2,8,6,4,7])
p merge_sort([3,1,5,2,8,6,4,7], 0, 7)
p selection_sort([3,1,5,2,8,6,4,7])



