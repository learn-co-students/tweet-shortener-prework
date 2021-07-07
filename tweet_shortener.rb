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

def word_substituter(tweet_string)
  new_tweet = []
  tweet_string.split(" ").collect do |word|
    if dictionary.keys.include?(word)
      new_tweet.push(dictionary[word])
    else
      new_tweet.push(word)
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
  new_tweet = []
  tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet.push(dictionary[word.downcase])
    else
      new_tweet.push(word)
    end
  end
  puts new_tweet.join(" ")
end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
      new_tweet = []
  tweet.split(" ").collect do |word|
    if dictionary.keys.include?(word)
      new_tweet.push(dictionary[word])
    else
      new_tweet.push(word)
    end
  end
  new_tweet.join(" ")
else
  tweet
end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
      new_tweet = []
      tweet.split(" ").collect do |word|
      if dictionary.keys.include?(word)
        new_tweet.push(dictionary[word])
      else
        new_tweet.push(word)
      end
    end
    if new_tweet.join(" ").length > 140
      new_tweet.join(" ")[0..136] + "..."
    else
      new_tweet.join(" ")
    end
  else
    tweet
  end
end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  