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

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include? (word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |array|
    puts word_substituter(array)
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
  return tweet if tweet.length <= 140
  if word_substituter(tweet).length <= 140
    return word_substituter(tweet)
  elsif word_substituter(tweet).length > 140
    shortened_tweet = word_substituter(tweet)[0...140]
    shortened_tweet[-3..-1] = "..."
    shortened_tweet
  end
end
