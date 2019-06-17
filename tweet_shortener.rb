require 'pry'

# Write your code here.

def dictionary 
  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2", 
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&" }
end

def word_substituter(tweet)
  words = []
  original = tweet.split(" ")
  original.each {
    |x| if dictionary[x.downcase]
    words << dictionary[x.downcase]
  else
    words << x
  end 
  }
  words.join(" ")
  end

def bulk_tweet_shortener(tweets)
  tweets.each {
    |tweet| puts word_substituter(tweet) 
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end



def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..139]
  else
    tweet
end
end



