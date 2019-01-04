# Write your code here.
require "pry"

def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  dictionary_hash
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word)
      word.replace(dictionary[word])
    else
      word
    end
  end.join(" ")
end



def bulk_tweet_shortener(array)
  array.collect do |tweet|
    puts "#{word_substituter(tweet)}"
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length < 140
    tweet
  else
    # binding.pry
    word_substituter(tweet)
    if word_substituter(tweet).length > 140
      word_substituter(tweet)[1..140]
    end
  end
end
