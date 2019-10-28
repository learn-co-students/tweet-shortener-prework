def dictionary
  substitutes = {"hello" => "hi", "to" =>"2", "two" => "2",
  "too" => "2", "for" => "4", "four" => "4", "be" =>"b",
  "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  tweet.map! do |x|
    if x == x.capitalize
      dictionary.has_key?(x.downcase) ? dictionary[x.downcase] : x
    else
      dictionary.has_key?(x) ? dictionary[x] : x
    end
  end
  tweet = tweet.join(" ")
  tweet
end

def bulk_tweet_shortener(tweets)
  short_tweets = []
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    short_tweet
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    short_tweet = word_substituter(tweet)
    if short_tweet.length > 140
      short_tweet = "#{short_tweet[1..137]}..."
    elsif
      short_tweet <= 140
      short_tweet
    end
  else
    tweet
  end
end
