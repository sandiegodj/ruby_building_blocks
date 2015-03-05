class String
  def isupper?
    self == self.upcase
  end
end


def cypher(str, shift)
  new_str = [];
  str.each_char do |c|
    if c =~ /^[A-z]+$/
      if c.isupper?
        c = (((c.ord - 65) + shift) % 26) + 65
      else
        c = (((c.ord - 97) + shift) % 26) + 97
      end
    else
      c
    end
    new_str << c.chr
  end
  puts new_str
end

