# Write the solutions to each problem here!

# 1

numbers = [1, 2, 4, 2]
doubled_numbers = numbers.map do |number|
  number * 2
end
p doubled_numbers

# 2

items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]
item_numbers = items.map do |item|
  item[:id]
end
p item_numbers

# 3

fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]
fruits_hash = fruits.map do |fruit|
  [fruit["name"], fruit["color"]]
end
p fruits_hash.to_h

# 4

def reverse_a_string(string)
  letter_arr = []
  string.each_char do |char|
    letter_arr.unshift(char)
  end
  letter_arr.join
end
p reverse_a_string("abcde")  #=> "edcba"

# 5

def find_longest_word(phrase)
  longest_word = ""
  longest_word_length = 0
  word_array = phrase.split(" ")
  word_array.each do |word|
    if longest_word_length < word.length
      longest_word_length = word.length
      longest_word = word
    end
  end
  longest_word
end

p find_longest_word("What is the longest word in this phrase?")  #=> "longest"