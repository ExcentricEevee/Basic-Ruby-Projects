def encrypt(phrase, shift_factor)
  final = ""

  #break each char into codepoints
  phrase.each_codepoint do |c|
    if (c.chr.match(/[A-Z]/))
      c += shift_factor
      #Z is codepoint 90...
      if (c > 90)
        #...so loop back to A
        c -= 26
      end
    elsif (c.chr.match(/[a-z]/))
      c += shift_factor
      #same as above but for downcase
      if (c > 122)
        c -= 26
      end
    end
  
    #convert back to char and add onto final variable
    final += c.chr
  end
  return final
end


print "Type a phrase you wish to encrypt: "
phrase = gets.chomp

print "Enter a number for the shift factor: "
shift_factor = gets.chomp

puts encrypt(phrase, shift_factor)