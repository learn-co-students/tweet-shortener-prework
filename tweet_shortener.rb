# Write your code here.
require "pry"

def dictionary
  {
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
  }
end

def word_substituter(tweet)
  substitution_list = dictionary
  tweet_array = tweet.split(" ")

  tweet_array.collect! do |word|
    lowercased = word.downcase
    if substitution_list.keys.include? lowercased
      substitution_list[lowercased]
    else
      word
    end
  end

  tweet_array.join(" ")
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
  shortened_tweet = word_substituter(tweet)

  if shortened_tweet.length > 140
    "#{shortened_tweet[0..136]}..."
  else
    shortened_tweet
  end

end
