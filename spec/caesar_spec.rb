require "./spec_helper"

describe "is_upper?" do
  it "is given an A" do
    expect(is_upper?('A')).to eq(true)
  end
end

describe "is_lower?" do
  it "is given an A" do
    expect(is_lower?('A')).to_not eq(true)
  end
end

describe "caesar_cypher" do
  
  it "handles different characters and cases correctly" do
    expect(caesar_cypher("A45[]!@{$b#", 1)).to eq("B45[]!@{$c#")
  end
  
end


