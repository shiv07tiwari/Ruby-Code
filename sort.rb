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

p bubble_sort([3,1,5,2,8,6,4,7])
p insertion_sort([3,1,5,2,8,6,4,7])