require 'pry'

def dictionary
  {"hello": "hi", "to": "2", "two": "2", "too": "2", "for": "4", "four": "4", "be": "b", "you": "u", "at": "@", "and": "&"}
end 




def word_substituter(tweet)
  
  tweet_words = tweet.split(" ") 
  
   # tweet_words is an array consisting of  |tword|'s
   #So, it's all working properly at least through here.
   
  new_tweet_words = tweet_words.collect do |tword|

    #At this point new_tweet_words returns nil.

    if dictionary.keys.include?(tword)
    #At this point, dictionary.keys does indeed yield an array of the keys in the hash in the above dictionary method.
       tweet_words[tweet_words.index(tword)] = dictionary.keys[tword]
   #At this point new_tweet_words returns nil.
    end 
  
    new_tweet_words
    
  end
   # At this point, dictionary, dictionary.keys, and tweet all seem to work fine. 
   
   # But, while tweet returns a string of 30 words:
   
   # "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
  
  # tweet.split(" ") and tweet_words both return a partial array followed by an actual array.  The partial array contains 19 words, including 2 "to"s, 2 "be"s, 1 "at", and no closing bracket: 
  
  #  ["Hey", "guys,", "can", "anyone", "teach", "me", "how", "to", "be", "cool?", "I", "really", "want", "to", "be", "the", "best", "at", "everything,",
  
  # And the actual array only contains 18 words, 2 of which are "you": 
  
  #  ["Hey", "guys,", "can", "anyone", "teach", "me", "how", "you", "know", "what", "I", "mean?", "Tweeting", "is", "super", "fun", "you", "guys!!!!"]
  
  # SO
   
   # new_tweet_words returns an array of 18 nils: 
   
   # [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
   
   binding.pry
  new_tweet = new_tweet_words.join(" ")
   #But new_tweet and new_tweet_words.join(" ") both return a long string of empty space (I'm guessing 18 spaces):
   
   # "                  "
   
   #So that means that the collect method that I'm running is turning tweet_words, an array of the original words, into new_tweet_words, an array of empty strings... 
   
  # (And) I just ran learn after having temporarily set new_tweet equal to simply new_tweet_words.join, without any (" "); and it returned  ""  , a COMPLETELY empty string that didn't even contain a single space.
end








 
def bulk_tweet_shortener(array_of_tweets)
  
end 



def selective_tweet_shortener(tweet)
  
end 


def shortened_tweet_truncator(tweet)
  
end 