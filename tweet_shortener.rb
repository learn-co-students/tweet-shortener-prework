# Write your code here.
require "pry"

def dictionary
# establish dictionary hash to be called later

dictionary_hash = {"hello" => "hi", "to" => "2", "too" => "2", "two"=> "2",  "for" => "4", "four" => "4", "be" => "b",
"you" => "u", "at" => "@", "and" => "&", "For" => "4"}

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

def bulk_tweet_shortener(long_tweets)

 long_tweets.each do |i|

  puts word_substituter(i)
 end
end

def selective_tweet_shortener(tweets)

  if tweets.length > 140
    tweets = tweets.split(" ")

    bulk_tweet_shortener(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweets)
  if tweets.length > 140
    tweets[1..137] + "..."
  else
    tweets
 end
end
