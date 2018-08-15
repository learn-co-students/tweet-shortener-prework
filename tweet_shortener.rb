def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end 

def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  tweet_words.collect do |tword|
    if dictionary.keys.include?(tword.downcase)
       tweet_words[tweet_words.index(tword)] = dictionary[tword.downcase]
    end
  end
  tweet_words.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
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
  if selective_tweet_shortener(tweet).length > 140
    tweet = "#{selective_tweet_shortener(tweet)[1..137]}..."
  else selective_tweet_shortener(tweet)
  end 
end 