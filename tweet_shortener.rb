def dictionary
list ={
  "hello" => 'hi',
    "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  "be" =>'b',
  "you" => 'u',
  "at" => "@",
  "and"=>"&"
}
end

def word_substituter(tweet)
  new_tweet=[]
  dictionary
  tweet.split(" ").map do |word|
    if dictionary[word.downcase]!=nil
     word = dictionary[word.downcase]
      new_tweet << word
    else
      new_tweet << word
    end
  end
  return new_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.collect do |tweet|
   puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length>140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
substituted_tweet = word_substituter(tweet)

  if substituted_tweet.length>140
    return substituted_tweet[0..136]+"..."
  else
    return substituted_tweet
  end
end
