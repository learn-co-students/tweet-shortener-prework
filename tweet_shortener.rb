# Write your code here.
require 'pry'

def dictionary 
  dictionary = {
    "hello": "hi",
    "to": "2",
    "two": "2",
    "too": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"
}
end

def word_substituter(tweet)
  tweetwrds = tweet.split(" ")
  strkeys = []
  dict_keys = dictionary.keys
  dict_keys.each do |x|
    strkeys << x.to_s
  end
  convert = []
  tweetwrds.each do |x|
     if strkeys.include?(x.downcase) 
       shortValue = dictionary[x.downcase.to_sym]
       convert << shortValue
     else
       convert << x
     end
  end
 convert.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else tweet.length < 130
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    short = word_substituter(tweet)
    if short.length > 140
      vshort = "#{short[0..136]}..."
    end
  else tweet.length < 140
    tweet 
  end
end








