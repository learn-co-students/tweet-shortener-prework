require 'pry'

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end 




def word_substituter(tweet)
  
  tweet_words = tweet.split(" ") # tweet_words is an array consisting of  |tword|'s
   
  new_tweet_words = tweet_words.collect do |tword|

    if dictionary.keys.include?(tword)
    
       tweet_words[tweet_words.index(tword)] = dictionary.keys[tword]
   
    end 
  
    new_tweet_words
    # dictionary   ,  dictionary.keys   ,   tweet  ,   and  tweet_words   are all returning what they should be returning.  But new_tweet_words is returning   nil  
    
  end

   # At this point, dictionary, dictionary.keys, and tweet all seem to work fine. 
   
   
   # dictionary.keys returns an array of the keys from the dictionary hash:
   
   # [:hello, :to, :two, :too, :for, :four, :be, :you, :at, :and]
   # AT LEAST PART OF THE PROBLEM IS THAT I'M NOT REMOVING THE : FROM EACH KEY.
   
   # But that's not the only problem.
   # tweet returns a string of 30 words:
   
   # "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
  
  # BUT tweet.split(" ") and tweet_words both return an unclosed array followed by an closed array.  The partial array contains 19 words, including 2 "to"s, 2 "be"s, 1 "at", and no closing bracket: 
  
  #  ["Hey", "guys,", "can", "anyone", "teach", "me", "how", "to", "be", "cool?", "I", "really", "want", "to", "be", "the", "best", "at", "everything,",
  
  # And the actual array only contains 18 words, 2 of which are "you": 
  
  #  ["Hey", "guys,", "can", "anyone", "teach", "me", "how", "you", "know", "what", "I", "mean?", "Tweeting", "is", "super", "fun", "you", "guys!!!!"]
  
  # SO
   
   # new_tweet_words returns an array of 18 nils: 
   
   # [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]

   #At this point, dictionary, dictionary.keys, and tweet all seem to work fine. 
   # tweet.split(" ") returns 1 array of 18 words, 2 of which are "you".
  # But tweet_words returns a partial array followed by an actual array.  The partial array contains 19 words, including 2 "to"s, 2 "be"s, 1 "at", and no closing bracket: 
  
  #  ["Hey", "guys,", "can", "anyone", "teach", "me", "how", "to", "be", "cool?", "I", "really", "want", "to", "be", "the", "best", "at", "everything,",
  
  # The second array contains 18 words, 2 of which are "you": 
  
  #
   
   #And new_tweet_words returns an array of nils, along the lines of [nil, nil, nil]   . I think there are 18 nils.  

   
   
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