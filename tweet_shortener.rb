require 'pry'

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end 

def word_substituter(tweet)
  tweet_words = tweet.split(" ") 
  new_tweet_words = tweet_words.collect do |tword|
    if dictionary.keys.include?(tword)
       tweet_words[tweet_words.index(tword)] = dictionary.keys[dictionary.keys.index(tword)]
# tweet  ,   tweet_words   ,   and    dictionary.keys   return the appropriate values.   
    end 
    new_tweet_words
  end
# new_tweet_words returns an array of 30 nils (one for each word in the tweet): 
# [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
  
  new_tweet = new_tweet_words.join(" ")
  
  # new_tweet returns a long, empty string, presumably the length of 30 spaces:
  # "                             "
end







 
def bulk_tweet_shortener(array_of_tweets)
  
end 



def selective_tweet_shortener(tweet)
  
end 


def shortened_tweet_truncator(tweet)
  
end 