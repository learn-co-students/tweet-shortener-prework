# Write your code here.
def word_substituter(tweet)
  short_hsh = {"to" => "2", "be" => "b", "at" => "@", "you" => "u", "and" => "&", "too" => "2", "for" => "4", "For" => "4"}
  new_tweet = tweet.split(" ").map do |word|
    if short_hsh[word] == nil
      word
    else
      short_hsh[word]
    end
  end
  new_tweet.join (" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  tweet.length > 140 ? tweet[1..140] : tweet
end
