require 'pry'

def dictionary
  dictionary = {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(tweet)
  word_array = tweet.split
  dictionary_array = dictionary.keys
  word_array.map do |w|
    if dictionary_array.include?(w)
      w = dictionary[w]
    else
      w
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end
