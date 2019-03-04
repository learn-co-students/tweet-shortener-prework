# Write your code here.
require 'pry'

def dictionary
  dictionary = {
    "hello" => 'hi',
    "two" => "2",
    "too" => "2",
    "to" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
}
end

def word_substituter(tweets)
  chopped_array = tweets.split(" ")
  replaced_tweet = []
  chopped_array.each do |x|
    if dictionary.keys.include?(x)
        replaced_tweet << dictionary[x]
      else
        replaced_tweet << x
    end
  end
  replaced_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  shortened_tweet = []
  tweets.each do |x|
    short_guy = word_substituter(x)
    shortened_tweet << short_guy
    end
  puts shortened_tweet
end
