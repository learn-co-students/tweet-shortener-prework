# Write your code here.
require 'pry'
def dictionary
  words = {
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
  subs = dictionary
  twtarr = []
  twt = ""
  twtarr = tweet.split(' ')
  twtarr.each do |word|
    subs.each do |key, val|
      if word.downcase == key
        word = val
        #binding.pry
      end
    end
    twt += " "
    twt += word
  end
  twt.slice(1..twt.length)
end

def bulk_tweet_shortener(tweets)
  arr = []
  tweets.each do |tweet|
    arr << word_substituter(tweet)
  end
  arr.each do |twt|
    puts twt
  end
end

def selective_tweet_shortener(tweet)
  #if tweet == nil || tweet == [] || tweet == ""

  #else
    str = ""
    str << tweet
    #binding.pry
    if str != ""
      if str.length > 140
          word_substituter(tweet)
      else
        tweet
      end
    end

  #end
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  if tweet.length > 140
    tweet = tweet[0..139]

  end
  tweet

end
