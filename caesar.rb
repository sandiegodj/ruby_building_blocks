def is_upper?(letter)
  if letter.ord >= 65 and letter.ord <= 90
    true
  else
    false
  end
end

def is_lower?(letter)
  if letter.ord >= 97 and letter.ord <= 122
    true
  else
    false
  end
end


def caesar_cypher(message, cypher)
cypher = cypher.to_i
encrypted_message = []

message.each_byte do |letter|
	if is_upper?(letter)
		encrypted_message << ((((letter - 65) + cypher) % 26) + 65).chr
	elsif is_lower?(letter)
		encrypted_message << ((((letter - 97) + cypher) % 26) + 97).chr
	else
		encrypted_message << letter.chr
	end
end
encrypted_message.join
end
caesar_cypher("AAA", 0)

