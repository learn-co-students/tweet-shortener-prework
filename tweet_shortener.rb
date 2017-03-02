# Write your code here.
require 'pry'

def dictionary
  words = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  tweet.split.each do |word|
    if dictionary.keys.include?(word)
    dictionary.keys.map do |key|
      if key == word
        word.replace(dictionary[key])
      end
    end
  end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    return short_tweet[0..136] += "..."
  else tweet
  end
end
