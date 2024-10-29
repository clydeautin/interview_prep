# @param {String} text
# @return {Integer}
# b a l l o o n (7)
# input is a crazy string of character 
## order does not matter
# output = count of times we were able to write out balloon with the characters given in text

#might just be easier to turn the text into an array, to start
#iterate through the array and as we land on a letter we check if it belongs to the word balloon
# to check if it belongs we should use a hash for efficiency (can't use set due to duplicates)
## If the letter exists, we can maybe increment the balloon hash
# Then pull all the values out of the balloon hash and convert that into a set, if there's more than 
def max_number_of_balloons(text)
  balloon_hash = {'b' => 0, 'a' => 0, 'l' => 0, 'o' => 0, 'n' => 0}

  text.each_char do |char|
      if balloon_hash[char]
          balloon_hash[char] += 1
      end
  end

  balloon_hash['l'] /= 2
  balloon_hash['o'] /= 2

  balloon_hash.values.min
end

text1 = "nlaebolko"

print max_number_of_balloons(text1)