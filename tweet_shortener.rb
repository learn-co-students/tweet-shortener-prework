require 'pry'


def dictionary
  words_to_sub = { hello: "hi", be: "b", you: "u", at: "@", and: "@", for: "4", four: "4", to: "2", two: "2", too: "2", to: "2"}
end 

def word_substituter(tweet)
  tweet.split.collect do |word|
    binding.pry
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end 
  end.join(" ")
end

