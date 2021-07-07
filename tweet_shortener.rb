def dictionary
  words = {
    "hello" => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&',
  }
end


def word_substituter(tweet)
  array = tweet.split
  array.collect do |item|
    if dictionary.keys.include?(item.downcase)
      item = dictionary[item.downcase]
    else
      item
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else tweet.length > 140
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  tweet = word_substituter(tweet)
  if tweet.length <= 140
    return tweet
  else
      tweet = tweet[0..136]
      tweet + "..."
  end
end
