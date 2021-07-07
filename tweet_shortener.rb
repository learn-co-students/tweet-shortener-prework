
def dictionary
  subs = {:hello => "hi", :to => "2", :two => "2", :too => "2", :for => "4", :For => "4", :four => "4", :be => "b",
          :you => "u", :at => "@", :and => "&"}
end

def word_substituter(tweet_str)
  tweet_arr = tweet_str.split(' ')
  updated_tweet = tweet_arr.map do |word|
  dictionary[word.to_sym] ? dictionary[word.to_sym] : word
end
  return updated_tweet.join(' ')
end

def bulk_tweet_shortener(tweet_arr)
   tweet_arr.each do |short_tweets|
    puts word_substituter(short_tweets)
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
  short_tweet = word_substituter(tweet)
  if short_tweet.length > 140
    short_tweet[0..136] + '...'
  else
    short_tweet
end
end
