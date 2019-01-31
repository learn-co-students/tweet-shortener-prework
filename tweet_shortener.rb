# Write your code here.
require "pry"
def dictionary
  dictionary ={
    hello:"hi",
    to:"2",
    two:"2",
    too:"2",
    for:"4",
    four:"4",
    For:"4",
    be:"b",
    you:"u",
    at:"@",
    and:"&"
  }
end

def word_substituter(string)
  string.split.collect do |word|
    if dictionary.keys.include?(word.to_sym)
    # binding.pry
    word = dictionary[word.to_sym]
    else
    word
    end
end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
  puts word_substituter(tweet)
  # binding.pry
  end
  array.join(" ")
  end

def selective_tweet_shortener(array)
  # binding.pry
  if array.length > 140
  word_substituter(array)
  else
    return array
end
end

def shortened_tweet_truncator(tweets)
  if tweets.length > 140
  tweets = word_substituter(tweets)
  end
    if tweets.length >140
    tweets = tweets[1..140]
    end
    tweets
end
