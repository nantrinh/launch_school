# argument: a string with one or more space separated words
# returns a hash that shows the number of words of different sizes
#
# split strings by spaces => array of words
# initialize hash
# iterate through array, for each word, get its size.
# see if the size is in the hash
# if it is, increment value of hash[size]
# else, add it to hash: hash[size] => 1
# return hash

def word_sizes(str)
  str.downcase.delete('^a-z ').split.each_with_object({}) do |word, hsh|
    size = word.size
    hsh.key?(size) ? hsh[size] += 1 : hsh[size] = 1
  end
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
