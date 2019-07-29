require "pry"

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
    "and" => "&"
  }
end


def word_substituter(tweet)
    
    tweet_array = tweet.split(" ")

    tweet_array.map do |word|
    dictionary.each do |key, value|
    word = value if word.downcase == key
  end
  word
end.join(" ")
end

def bulk_tweet_shortener(tweets)
  
  tweets.each do |tweet|
  puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length < 140 ? tweet : word_substituter(tweet)
end


def shortened_tweet_truncator(tweet)
  word_sub_tweet = word_substituter(tweet)
  tweet.length > 140 ? word_sub_tweet[0..136] + "..." : tweet
end

