def dictionary(word)
  dictionary = {
  'hello': 'hi',
  'to': '2',
  'two': '2',
  'too': '2',
  'for': '4',
  'be': 'b',
  'four': '4',
  'you': 'u',
  'at': '@',
  'and': '&'
  }
  word = (dictionary.keys.include? word.downcase) ? dictionary[word.downcase.to_sym] : word
end

def word_substituter(long_tweet)
  long_tweet = long_tweet.split(" ")
  shorter_tweet = long_tweet.collect do |word|
    dictionary(word.to_sym).to_s
  end
  shorter_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  (tweet.length > 140) ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  (selective_tweet_shortener(tweet).length > 140) ? "#{selective_tweet_shortener(tweet)[0..139]}" : selective_tweet_shortener(tweet)
end