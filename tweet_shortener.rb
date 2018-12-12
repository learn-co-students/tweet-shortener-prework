# Write your code here.
require "pry"
def dictionary
dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end
def word_substituter(tweet)
  tweet.split(" , ")
  dictionary.each do |word, replacement|
    if tweet.include?(word)
      tweet.gsub!(/\b#{word}\b/i, replacement)
    end
  end
  tweet
end

def bulk_tweet_shortener(tweet)
  tweet.each do |tweet|
    puts word_substituter(tweet)
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
  tweet
  if tweet.length <= 140
     tweet
  else
   tweet[1..140]
  end
end
