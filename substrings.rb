#returns a hash containing the frequency that a predefined list of words occurs in a sentence
def substring(sentence, array)
	frequencies = Hash.new(0)

	words = sentence.split(" ")

	array.each do |string|
		words.each do |word|
			if word.downcase.include? string.downcase
			frequencies[string] += 1
			end
		end
	end
	puts frequencies
end

array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substring("Howdy partner, sit down! How's it going?", array)