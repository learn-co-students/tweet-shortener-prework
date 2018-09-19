# Write your code here.

def dictionary 
  {
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
  updated_tweet = tweet.split(' ')
  updated_tweet.each_with_index do |word, index|
    dictionary.each do |old, substitue| 
      if word.downcase == old
        updated_tweet[index] = substitue
      end
    end 
  end
  updated_tweet.join(' ')
end 

def bulk_tweet_shortener(tweets)
  tweets.each do |array|
    puts word_substituter(array)
  end
end 

def selective_tweet_shortener(tweet)
  if(tweet.length > 140)
    return word_substituter(tweet)
  end 
  tweet
end 

def shortened_tweet_truncator(tweet)
  if tweet.length > 140 
    return tweet[0..136] << "..."
  end 
  tweet
end 







