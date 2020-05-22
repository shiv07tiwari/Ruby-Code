# 3 sum problem using combination.
def three_sum (array, value)
    array.combination(3).each do |a,b,c|
        if (a+b+c) == value
            return true
        end
    end
    return false
end

p three_sum([1,2,3,4,5,6], 6)