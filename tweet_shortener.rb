require 'pry'

def dictionary
  {"hello": "hi", "to": "2", "two": "2", "too": "2", "for": "4", "four": "4", "be": "b", "you": "u", "at": "@", "and": "&"}
end 




def word_substituter(tweet)
   
 
  tweet_words = tweet.split(" ") 
   # tweet_words is an array consisting of  |tword|'s
   #So, it's all working properly at least through here.
  
  new_tweet_words = tweet_words.collect do |tword|
    if dictionary.keys.include?(tword)
    #At this point, dictionary.keys does indeed yield an array of the keys in the hash in the above dictionary method.
       tweet_words[tweet_words.index(tword)] = dictionary.keys[tword]
       
    end 
  end
  new_tweet = new_tweet_words.join(" ")
  
  #But new_tweet is nothing but a long string of empty space (as is new_tweet_words.join(" ")).  So that means that the collect method that I'm running is turning tweet_words, an array of the original words, into new_tweet_words, an array of empty strings...  
  #AND I just ran learn after having temporarily set new_tweet equal to simply new_tweet_words.join, without the (" "); and it returned  ""  , a COMPLETELY empty string that didn't even contain a single space. So, having returned the code back to its pre-tweaked state, I imagine that each original word is being converted into  ""  .
end


def bulk_tweet_shortener(array_of_tweets)
  
end 


def selective_tweet_shortener(tweet)
  
end 


def shortened_tweet_truncator(tweet)
  
end 