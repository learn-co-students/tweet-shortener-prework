def dictionary

  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "For" => '4',
    "Four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet_one)

  dict = dictionary
  words = tweet_one.split(" ")

  words.map do |wrd|
    dict.map do |key, value|
      if wrd == key
        wrd.replace(value)
      end

    end
  end
  words.join(" ")
end

def bulk_tweet_shortener(tweets)

  tweets.map do |tweet|
  puts "#{word_substituter(tweet)}"
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
