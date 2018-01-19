require 'pry'

def dictionary
  dictionary = {
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
end

def word_substituter(tweet_string)
  string_array = tweet_string.split
  dic_keys = dictionary.keys
  string_array.map do |item|
    if dic_keys.include?(item)
      item = dictionary[item]
    else
      item
    end
  end.join(" ")
end

def bulk_tweet_shortener(array_o_tweets)
  array_o_tweets.each do |tweet|
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
  if word_substituter(tweet).length > 140

    subs_string = word_substituter(tweet)
    subs_string.slice!(137..-1)
    subs_string << "..."
    #binding.pry
  else
   tweet
  end
end
