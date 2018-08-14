require 'pry'

def dictionary
  dictionary_hash = {"hello": "hi", "to": "2", "two": "2", "too": "2", "for": "4", "four": "4", "be": "b", "you": "u", "at": "@", "and": "&"}
  
end 


def word_substituter(tweet)
  dictionary_hash = dictionary
  d_h_keys = dictionary_hash.keys 
  # d_h_keys is an array consisting of |dhk|'s
  tweet_words = tweet.split(" ") 
   # tweet_words is an array consisting of  |tword|'s
   #So, it's all working properly at least through here.
  
  new_tweet_words = tweet_words.collect do |tword|
    if d_h_keys.include?(tword)
       tweet_words[tweet_words.index(tword)] = dictionary_hash[tword]
    end 
  end
  new_tweet = new_tweet_words.join(" ")
  
  # But new_tweet is nothing but a long string of empty spaces.
end


def bulk_tweet_shortener(array_of_tweets)
  
end 


def selective_tweet_shortener(tweet)
  
end 


def shortened_tweet_truncator(tweet)
  
end 