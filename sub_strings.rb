dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  hash = Hash.new(0) #new hash for final answer

  string.downcase.split.each do |arr_word| #downcase the letters and split words into an array and loop each word
    dictionary.select { |dic_word| hash[dic_word] += 1 if arr_word.include?(dic_word) } #if the dictionary word is included in the array word put it in a hash as a key and add one to the intial vallue of zero.
  end

return hash #return the hash :)
end

print substrings("below", dictionary) #{ "below" => 1, "low" => 1 }
puts
print substrings("Howdy partner, sit down! How's it going?", dictionary) #{ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
