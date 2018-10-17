require 'pry'

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
    "and" => "&",
    "Hello" => "Hi",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "B",
    "You" => "U",
    "At" => "@",
    "And" => "&"
  }
end

def word_substituter(tweet)
  word_array = tweet.split(" ")
  new_tweet = word_array.map do |word|
    if dictionary[word]
      dictionary[word]
    else
      word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
      word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  else
    tweet
  end
end
