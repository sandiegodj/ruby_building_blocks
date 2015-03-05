
def caesar_cipher(word, shiftNum)
  
  smallLetters = ('A' .. 'Z').to_a #creating array of lowercase letters
  bigLetters = ('a' .. 'z').to_a #creating array of uppercase letters
  abcs = smallLetters += bigLetters #combined two arrays in to one
  newWord = " " #made a blank word
  

  
  word.each_char do |c|
    if abcs.include?(c)
      newWord += abcs[abcs.index(c) + shiftNum]   
  else 
      newWord += c
    end
  end
  puts newWord 
end

caesar_cipher('AAA',1)