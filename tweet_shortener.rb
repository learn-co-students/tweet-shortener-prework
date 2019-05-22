# Write your code here.

DICTIONARY = {
    hello: 'hi',
    to: '2',
    two: '2',
    too: '2',
    for: '4',
    be: 'b',
    you: 'u',
    at: '@',
    and: '&'
  }

def word_substituter(tweet)
  results = []
  words = tweet.split
  words.each do |word|
    if DICTIONARY.keys.include?(word.downcase.to_sym)
      results << DICTIONARY[word.downcase.to_sym]
    else
      results << word
    end
  end
  results.join(' ')
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return word_substituter(tweet) if tweet.length > 140
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet[0...137] + '...'
  end
  tweet
end
