require 'pry'
# Write your code here.
tweet_one = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def word_substituter(tweet)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  tweet_array = tweet.split(" ").collect do |word|
#    puts dictionary.keys.include?(word)
    dictionary.keys.include?(word.downcase)? dictionary[word.downcase] : word
  end

  tweet_array.join(" ")
end

#puts word_substituter(tweet_one)

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  tweet.length >140? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)[0,140]
end
