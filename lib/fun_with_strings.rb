module FunWithStrings
  def palindrome?
    # your code here
    
    reverse = self.downcase.reverse
    reverse.gsub!(/[^a-z]/, '')
    
    normal = self.downcase
    normal.gsub!(/[^a-z]/, '')
    
    #puts "normal: #{normal} reverse: #{reverse} #{normal == reverse}"
    return normal == reverse

  end
  def count_words
    # your code here
    hash = {}

    chars = self.downcase.gsub(/[^a-z]/, ' ')
    chars = chars.split(" ")
    
    chars.each {|c|
    
      if hash[c].nil? #doesn't exist yet
        hash[c] = 1
      else #exists
        hash[c] += 1
      end
    }
    
    return hash
    
  end
  def anagram_groups
    return []
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
