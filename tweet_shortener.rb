
  def dictionary 
   dictionary_hash =
 { "hello" => "hi", "to" => "2", 
 "two" => "2", "too" => "2","for" => "4", "For" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
 end
    
  
  def word_substituter(str)
    
    newarr = []
    
    str.split(" ").map do |word|
      
      if dictionary.keys.include?(word)
        newarr << dictionary[word]
      else
        newarr << word
      end
    end
    newarr.join(" ")
  end
  

  def bulk_tweet_shortener(arr_of_tweets)
    
  arr_of_tweets.map do |tweet|
  puts word_substituter(tweet)

  end
  end
  
  
  def selective_tweet_shortener(tweet)
    
    if tweet.length > 140
    word_substituter(tweet)
    else
    tweet
    end
    end
 
  
  
  def shortened_tweet_truncator(tweet)

  if tweet.length > 140
  tweet.slice(0, 140)
  else
  tweet
  end
  end
 
  
  