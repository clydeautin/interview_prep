# Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.

# Each letter in magazine can only be used once in ransomNote.

# Example 1:

# Input: ransomNote = "a", magazine = "b"
# Output: false
# Example 2:

# Input: ransomNote = "aa", magazine = "ab"
# Output: false
# Example 3:

# Input: ransomNote = "aa", magazine = "aab"
# Output: true


# Constraints:

# 1 <= ransomNote.length, magazine.length <= 105
# ransomNote and magazine consist of lowercase English letters.

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}

#input = string of letters x2
#output = boolean

# order of characters does not matter
# count of letters matters
# iterate through ransomNote, if letter in random Note exists in magazine then we keep return as true and we remove that character or decrease it's count
#iterate through magazine, make dictionary of chars => count
#iterate through ransome notes, check if a character exists in dictionary and if it does, is it's value greater than 0
# keep the return true but if at anytime it is not true, return false
def can_construct(ransom_note, magazine)
  mag_dict = Hash.new(0)

  magazine.each_char do |char|
      # if mag_dict[char]
          mag_dict[char] += 1
      # else 
      #     mag_dict[char] = 1
      # end
  end

  ransom_note.each_char do |char|
      if !mag_dict[char] || mag_dict[char] == 0
          return false
      else
          mag_dict[char] -= 1
      end
  end
  true
end