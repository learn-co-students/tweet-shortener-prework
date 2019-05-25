require "pry"
def dictionary()
  dictionary = {
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

  tweet.split.collect do |word|
    
   if dictionary.keys.include?(word.downcase)
    
       word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end
  
def bulk_tweet_shortener(tweet)
    tweets.each do |tweet|
    puts word_substituter(tweet)
    
  end
end
  
  def selective_tweet_shortener(tweet)
  
      if tweet.length > 140
        return word_substituter(tweet)
      else
        tweet[0..140]
        #binding.pry

        tweet
    
      end 
    end
    
    def shortened_tweet_truncator(tweet)
      tweets = word_substituter(tweet)
      if tweets.length > 140
        tweets[0...135] + ". . ."
      else
       tweets
      end
    end