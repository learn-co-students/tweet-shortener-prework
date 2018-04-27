require 'pry'

def dictionary
  dic = {
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
  dic_keys = dictionary.keys
  new_tweet = tweet.split(" ")

  new_tweet.each_with_index do |word, index|
    dic_keys.each do |key|
      if word.casecmp(key) == 0
        new_tweet[index] = dictionary[key]
      end
    end

  end
  new_tweet.join(" ")
end


def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
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
    if word_substituter(tweet).length > 140
      word_substituter(tweet)[0..136] << "..."
    end
  else
    tweet
  end
end
