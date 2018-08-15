require 'pry'

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end 

def word_substituter(tweet)
  tweet_words = tweet.split(" ") 
  new_tweet_words = tweet_words.collect do |tword|
    if dictionary.keys.include?(tword)
       tweet_words[tweet_words.index(tword)] = dictionary.keys[tword]
    end 
    new_tweet_words
  end
  new_tweet = new_tweet_words.join(" ")
end







 
def bulk_tweet_shortener(array_of_tweets)
  
end 



def selective_tweet_shortener(tweet)
  
end 


def shortened_tweet_truncator(tweet)
  
end 