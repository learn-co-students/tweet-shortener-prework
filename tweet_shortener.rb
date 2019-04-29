# Write your code here.
def dictionary(word)
  words = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'For' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
  words[word]
end

def word_substituter(tweet)
  words = {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'For' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
  tweet_arr = tweet.split(' ')
  shortened = []

  tweet_arr.each do |e|
    e = dictionary(e) if words.keys.include?(e)
    shortened << e
  end
  shortened.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet
  elsif tweet.length > 140
    tweet = word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length <= 140
    tweet
  elsif tweet.length > 140
    tweet.slice!(137..tweet.length - 1)
    tweet << '...'
    tweet
  end
end
