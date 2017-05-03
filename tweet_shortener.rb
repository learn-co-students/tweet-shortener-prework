# Write your code here.
require 'pry'

def dictionary
  dictionary = {"hello" => 'hi',
                "to" => '2',
                "two" => "2",
                "too" => "2",
                "for" => '4',
                "four" => '4',
                'be' => 'b',
                'you' => 'u',
                "at" => "@",
                "and" => "&"}
end

def word_substituter(tweet)
  dict = dictionary
  tweet_arr = tweet.split(" ")
  tweet_arr = tweet_arr.collect do |word|
    word = single_word_substituter(word)
  end
  tweet_arr.join(" ")
end

def single_word_substituter(word)
  dict = dictionary
  op_word = word.downcase
  if dict.key?(op_word)
    word = dict[op_word]
  end
  word
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = "#{tweet[0..139]}"
  end
  tweet
end
