# Write your code here.
require "pry"
def dictionary(word)
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }
  dictionary.each do |wrd, defi|
    return defi if wrd == word.downcase
  end
  word
end

def word_substituter(tweet)
  arr = tweet.split.map do |word|
    word = dictionary(word)
    #binding.pry
  end
  arr.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)

  end
end

def selective_tweet_shortener (tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  return selective_tweet_shortener(tweet)[0...140] if selective_tweet_shortener(tweet).length > 140
  selective_tweet_shortener(tweet)
end
