array = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(word, array)
	frequencies = Hash.new(0)
	words = word.split(" ")
	array.each { |string|
		words.each { |word|
			if word.downcase.include? string.downcase
			frequencies[string] += 1
			end
		}	
	}
	puts frequencies
end
substring("Howdy partner, sit down! How's it going?", array)