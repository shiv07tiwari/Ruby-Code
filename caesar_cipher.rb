def caesar_cipher(string, shift)
    string = string.chars.map{|c| c.ord}
    string = string.map {|x| x + shift}
    string = string.map{|c| c.chr}.join()
end

p caesar_cipher("Hello", 2)