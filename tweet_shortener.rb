# Write your code here.
def dictionary
subs = {
    hello: "hi",
    Hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    For: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
}
end

def word_substituter(tweet)
 new_tweet = []
 keys = dictionary.keys
 tweet_symbols = []
 array = tweet.split(" ")
  array.each do |word|
    tweet_symbols << word.to_sym
  end
  symbol_tweet = []
    tweet_symbols.each do |symbol|
      if keys.include?(symbol)
        symbol = dictionary[symbol]
        symbol_tweet << symbol
      else
        symbol_tweet << symbol
      end
    end
    symbol_tweet.each do |word|
      new_tweet << word.to_s
  end
  new_tweet.join(" ")
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
  sub_tweet = word_substituter(tweet)
  if sub_tweet.length > 140
    sub_tweet[0..139]
  else
    sub_tweet
  end
end
