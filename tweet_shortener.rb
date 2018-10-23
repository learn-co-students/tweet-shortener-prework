require 'pry'


def dictionary
  words_to_sub = { hello: "hi", be: "b", you: "u", at: "@", and: "@", for: "4", four: "4", to: "2", two: "2", too: "2", to: "2"}
end 

def word_substituter(tweet)
  symbol_sub_array = dictionary.keys
  string_sub_array = symbol_sub_array.collect { |x| x.to_s }
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    if word.include?("hello", "be", "you", "at", "and", "for", "four", "to", "two", "too")
      tweet_array[word] = "z"
      
    end 
  end
end


