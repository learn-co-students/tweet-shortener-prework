# Write your code here.

require 'pry'

def dictionary
  dicionary = {
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
  tweet_words = tweet.split
  substituted_tweet = []
  tweet_words.each do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
      substituted_tweet << word
    else
      substituted_tweet << word
    end
  end
  substituted_tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else 140
      tweet
    end
end


def shortened_tweet_truncator(tweet)
    if selective_tweet_shortener(tweet).length > 140
      word_substituter(tweet)[0..136] + "..."
    else
      selective_tweet_shortener(tweet)
    end
end
