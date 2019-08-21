require 'pry'
def dictionary
  dictionary = {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweet)
  dictionary
  tweet = tweet.split
  tweet.map! do |w|
    if dictionary.keys.include?(w.downcase)
      w = dictionary[w.downcase]
    else
      w
    end
  end
  tweet = tweet.join(" ")
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
  selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0..135]<<" ..."
  else
    tweet
  end
end
