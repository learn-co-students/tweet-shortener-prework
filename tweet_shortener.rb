def dictionary
  {:hello => 'hi', :to => '2', :two => '2', :too => '2', :for => '4', :four => '4', :be => 'b', :you => 'u', :at => "@", :and => "&"}
end

def word_substituter(tweet)
  keys = dictionary.keys
  items = tweet.split(/\b/)
  new_tweet = items.map do |item|
    if keys.include?(item.downcase.to_sym)
      item = dictionary[item.downcase.to_sym]
    else
      item
    end
  end
  new_tweet.join
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
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
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length > 140
    new_tweet.slice(0..139)
  else
    new_tweet
  end
end