# Write your code here.
require 'pry'

def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => "u",
    "at" =>  "@",
    "and" => "&" 
  }
end

def word_substituter(tweet_string)
  short_array = []
  array = tweet_string.split(" ")
  d_keys = dictionary.keys 
  array.each_with_index do |word, index|
    if d_keys.include?(word.downcase)
      short_array.push(dictionary[word.downcase])
    else
      short_array.push(array[index])
    end
  end
  short_array.join(" ")
end

def bulk_tweet_shortener(tweet_string_array)
  tweet_string_array.collect do |string|
   puts word_substituter(string)
 end
end
  
def selective_tweet_shortener(tweet_string)
  if tweet_string.size < 140
    tweet_string
  else
    word_substituter(tweet_string)
  end
end

def shortened_tweet_truncator(tweet_string)
  if tweet_string.size > 140
    tweet_string[0..136] + "..."
  else
    tweet_string
  end
end

