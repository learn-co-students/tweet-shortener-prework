require 'pry'
def dictionary
  dictionary = {
    "hello": "hi",
    "to": "2",
    "for": "4",
    "four": "4",
    "two": "2",
    "too": "2",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"
  }

end

def word_substituter(tweet)
  tweet = tweet.split(' ')
  dictionary.each do |k, v|
    tweet.map! { |word| word.downcase == k.to_s ? word = v : word = word }
  end
  tweet.join(' ')
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
  if tweet.length > 140
    word_substituter(tweet)[0..136] + "..."
  else
    tweet
  end
end
