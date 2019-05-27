# Write your code here.
require 'pry'

def dictionary(word)
  subs = {
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
  substitute = [word]
  subs.each do |key, value|
    potential_switch = word
    while potential_switch.downcase == key.downcase do
      potential_switch = value
      substitute << potential_switch
    end
  end
  substitute[-1]
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  short_array = []
  count = 0

  tweet_array.each do |word|
    short_array << dictionary(word)
    count += 1
  end
  return short_array.join(" ")
end

#iterates, shortens, puts out results to screen
def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    single_tweet = word_substituter(tweet)
    puts single_tweet
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet_array = tweet.split(" ")
    short_array = []
    count = 0

    tweet_array.each do |word|
      short_array << dictionary(word)
      count += 1
    end
    return short_array.join(" ")
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet_array = tweet.split(" ")
    short_array = []
    count = 0

    tweet_array.each do |word|
      short_array << dictionary(word)
      count += 1
    end
    short_string = short_array.join(" ")
    if short_string.length > 140
      trunc_string = short_string[0...137] << "..."
      return trunc_string
    else
      return short_string
    end
  else
    return tweet
  end
end
