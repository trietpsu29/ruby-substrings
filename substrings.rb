def substrings(str, dict)
    res = Hash.new
    str = str.downcase
    dict.each do |sub|
       if str.include?(sub)
        res[sub] = (str.length - str.split(sub).join("").length)/sub.length
       end
    end
    res
end

puts "Enter your string:"
str = gets.chomp
dict = Array.new
puts "Enter your dictionary separated by commas:"
input = gets.chomp
dict = input.split(',')
puts substrings(str,dict)
