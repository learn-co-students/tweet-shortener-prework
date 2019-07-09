require 'pry'

def dictionary
  replacements = {"hello" => 'hi',
  "to" => '2' ,
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "For" => '4',
  "four" => '4',
  'be'=> 'b',
  'you'=> 'u',
  "at"=> "@", 
  "and"=> "&"}
end


def word_substituter(tweet)
  output_tweet_arr = []
  tweet_arr = tweet.split(" ")
  tweet_arr.each do | word |
    if dictionary.keys.include?(word)
      output_tweet_arr << dictionary[word]
    else
      output_tweet_arr << word
    end
  end
  output_tweet_arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |x|
    puts word_substituter(x)
  end
end


def selective_tweet_shortener(str)
   if str.length > 138
   word_substituter(str)
  else
    str
  end 
end

def shortened_tweet_truncator(str)
  if str.length > 140
    shortened_tweet = word_substituter(str)
    if shortened_tweet.length > 140
      shortened_tweet[0,137] + "..."
    else
      shortened_tweet
    end
   else
     str
   end 
end

