def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_words = tweet.split
  tweet_words.map! do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  tweet_words.join(' ')
  # tweet.split.map { |word| dictionary[word.downcase] || word }.join(' ')
end

def bulk_tweet_shortener(tweets_arr)
  tweets_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] + "..."
  else
    tweet
  end
end
