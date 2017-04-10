def dictionary
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
end

def dictonary_replace(word)
  if dictionary.keys.include?(word.downcase)
    if word == word.capitalize
      word = dictionary[word.downcase].capitalize
    else
      word = dictionary[word.downcase]
    end
  end
  word
end

# tweet shortener #word_substituter replaces long words with their expected short form
def word_substituter(tweet)
  tweet_parts = tweet.split(" ")
  parts = []
  tweet_parts.collect do |word|
    parts.push(dictonary_replace(word))
  end

  parts.join(" ")
end

# tweet shortener #bulk_tweet_shortener shortens each tweet and prints the results
def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts(word_substituter(tweet))
  end
end

# tweet shortener #selective_tweet_shortener shortens tweets that are more than 140 characters
# tweet shortener #selective_tweet_shortener does not shorten tweets that are less than 130 characters
def selective_tweet_shortener(tweet)
  if tweet.size > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

# tweet shortener #shortened_tweet_truncator truncates tweets over 140 characters after shortening
# tweet shortener #shortened_tweet_truncator does not shorten tweets shorter than 140 characters.
def shortened_tweet_truncator (tweet)
  selective_tweet_shortener(tweet)[0..139]
end
