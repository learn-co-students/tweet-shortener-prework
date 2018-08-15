require 'pry'

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end 




def word_substituter(tweet)
  
  tweet_words = tweet.split(" ") # tweet_words is an array consisting of  |tword|'s
   
  new_tweet_words = tweet_words.collect do |tword|
 # binding.pry     dictionary   ,  dictionary.keys   ,   tweet  ,   and  tweet_words   are all returning what they should be returning.  But new_tweet_words is returning   nil 
 
    if dictionary.keys.include?(tword)
      
   # binding.pry     dictionary   ,  dictionary.keys   ,   tweet  ,   and  tweet_words   are all returning what they should be returning.  But new_tweet_words is returning   nil 
   
       tweet_words[tweet_words.index(tword)] = dictionary.keys[tword]
       
   # binding.pry won't work here.
    end 
  # binding.pry     dictionary   ,  dictionary.keys   ,   tweet  ,   and  tweet_words   are all returning what they should be returning.  But new_tweet_words is returning   nil 
  
    new_tweet_words
    
    # binding.pry     dictionary   ,  dictionary.keys   ,   tweet  ,   and  tweet_words   are all returning what they should be returning.  But new_tweet_words is returning   nil 
    
    
    
  end
# binding.pry won't work here.

  new_tweet = new_tweet_words.join(" ")
  
 # binding.pry won't work here. 
end







 
def bulk_tweet_shortener(array_of_tweets)
  
end 



def selective_tweet_shortener(tweet)
  
end 


def shortened_tweet_truncator(tweet)
  
end 