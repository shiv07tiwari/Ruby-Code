# A helper method to generate MIN and MAX in Ruby
class Integer
    N_BYTES = [42].pack('i').size
    N_BITS = N_BYTES * 16
    MAX = 2 ** (N_BITS - 2) - 1
    MIN = -MAX - 1
end

def largest_subarray(*array)
    max_ending_now = 0
    max_till_now = Integer::MIN
    first = 0
    last = 0
    start = 0

    array.each_with_index do |val, i|
       max_ending_now += val
       if max_till_now < max_ending_now
            max_till_now = max_ending_now
            last = i
            first = start
       end 
       if max_ending_now < 0
            max_ending_now = 0
            start = i + 1
       end
    end
    p "Length of largest subarray : #{max_till_now}"
    p "Starting Index : #{start}"
    p "Ending Index : #{last}"
end

largest_subarray(-2,-3,4,-1,-2,1,5,-3)