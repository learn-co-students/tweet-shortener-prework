require 'pry'

# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_arr = tweet.split(' ')
  result = tweet_arr.collect do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else 
      word
    end 
  end 
  result.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(str)
  if str.length > 140 
    word_substituter(str)
  else 
    str
  end   
end 

def shortened_tweet_truncator(str)
  if str.length > 140
    str[0..136] + "..."
  else
    str
  end 
end 




