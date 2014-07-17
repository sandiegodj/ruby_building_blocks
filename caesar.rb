def caesar_cypher(message, cypher)
cypher = cypher.to_i
encrypted_message = []

message.each_byte do |letter|
	if letter >= 65 and letter <= 90
		encrypted_message << ((((letter - 65) + cypher) % 26) + 65).chr
	elsif letter >= 97 and letter <= 122
		encrypted_message << ((((letter - 97) + cypher) % 26) + 97).chr
	else
		encrypted_message << letter.chr
	end
end
 puts encrypted_message.join
end

caesar_cypher("Hello, Mother-efers!", 22)

