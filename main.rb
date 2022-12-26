
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
  dictionary.reduce(Hash.new(0)) do |output, word|
    output[word] = input.downcase.scan(word).length if input.downcase.include?(word)
    output
  end
end

p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)
