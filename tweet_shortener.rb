# Write your code here.


def word_substituter(tweet_one)
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

  tweet_one_short = tweet_one.split(' ').map do |word|
    if dictionary.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  tweet_one_short.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.map {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length >140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = selective_tweet_shortener(tweet)
  if new_tweet.length >140
    new_tweet[0..136]+"..."
  else
    new_tweet
  end
end 
