def check_substrings(original, dictionary)
  original_arr = original.split
  final = Hash.new(0)

  #originally this was a reduce iterator, with the hash being an accumulator. However, with the hash being defined outside of the iterator to accommodate iterating over multiple words, this proved unnecessary.
  original_arr.each do |word|
    dictionary.each do |substr|
      #if our word matches a piece in the dictionary...
      if word.downcase.include? substr
        #...add a tally for that word
        final[substr] += 1
      end
      final
    end
  end

  puts final
end

print "Say the magic words: "
input = gets.chomp

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

check_substrings(input, dictionary)