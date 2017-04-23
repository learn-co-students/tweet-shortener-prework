def dictionary
  dictionary = {'hello' => 'hi', 'to' => '2', 'two' => '2', 'too' => '2',
  'for' => '4', 'four' => "4", 'be' => 'b', 'you' => 'u', 'at' => '@', 'and' => '&'}
end

def word_substituter(tweet_one)
  if tweet_one.class != Array
    tweet_one = tweet_one.split
  end
  tweet_one.each do |word|
    dictionary.each do |key, value|
      if word == key || word == key.capitalize
        word.replace value
      end
    end
  end
  tweet_one.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet_one)
  if tweet_one.length > 140
    tweet_one = word_substituter(tweet_one)
  end
  tweet_one
end

def shortened_tweet_truncator(tweet_three)
  word_substituter(tweet_three)
  if tweet_three.length > 140
    tweet_three = "#{tweet_three[0..136]}..."
  end
  tweet_three
end
