require "pry"

def dictionary
 dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@", 
    "and" => "&"
  }
end


def word_substituter(tweet)
  tweet.split(/ /)
  
  tweet.each do |word|
    word == dictionary_hash.keys
  end
  #tweet.to_s
end