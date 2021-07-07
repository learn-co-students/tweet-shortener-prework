def dictionary
  dictionary = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(long_tweet)
  long_tweet.split.map do |word|
    dictionary.each do |key, value|
      word = dictionary[word.downcase] if dictionary.keys.include?(word.downcase)
    end
    word
  end.join(' ')
end

# here 'tweets' = array
def bulk_tweet_shortener(tweets)
  tweets.map { |tweet| puts word_substituter(tweet) }
end


def selective_tweet_shortener(tweet)
  if tweet.size > 140
      word_substituter(tweet)
  else tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).size > 140
    word_substituter(tweet)[0..136] + '...'
  else tweet
  end
end
