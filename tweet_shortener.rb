def dictionary
   {
    "hello" => "hi", 
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4", 
    "four" => "4",
    "be" => "b",
    "you" => "u",
     "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweetArray = tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  tweetArray.join(" ")
end

 def bulk_tweet_shortener(array)
  array.each do |word| 
    puts word_substituter(word)
end
end 

def selective_tweet_shortener(tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  elsif tweet.length <= 140
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140 
      tweet[0..139] 
    else 
      selective_tweet_shortener(tweet)
end
end 