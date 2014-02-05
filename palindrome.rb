#Part2: Palindrome

#Emma Mossinger

def palindrome?(string)


   #the end value of string2word is the entire string written as one word with
   #punctuation or capitalization
   #downcase: converts lowser case
   string2word = string.downcase
   #\w : any word character
   string2word = string2word.scan(/\w/)

   #check if the word is the same if reversed
   string2word == string2word.reverse

end

p palindrome?("A man, a plan, a canal -- Panama")  # => true

p palindrome?("Madam, I'm Adam!")                  # => true

p palindrome?("Abracadabra")                       # => false (nil is also ok)
