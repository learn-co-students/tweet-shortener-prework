# Write your code here.
require "pry"

def dictionary
# establish dictionary hash to be called later

dictionary_hash = {"hello" => "hi", "to" => "2", "too" => "2", "two"=> "2",  "for" => "4", "four" => "4", "be" => "b",
"you" => "u", "at" => "@", "and" => "&"}

end


def word_substituter(string_tweet)

  array_tweet = string_tweet.split(" ")
  shortened_word = array_tweet.collect do |i|
    if dictionary.keys.include?(i)
       dictionary[i]
     else
       i
    end
  end
  shortened_word.join(" ")
end
