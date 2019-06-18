def word_substituter(tweet)

dictionary = { "hello" => "hi",  "to" => "2",  "two" => "2",  "too" => "2",  "for" => "4",  "four" => "4",  "be" => "b",  "you" => "u",  "at" => "@",  "and" => "&" }

  tweet_array = tweet.split
    short_words = []
    tweet_array.each do |word|
    if dictionary.keys.include?(word.downcase)
      short_words << dictionary[word.downcase]
    else short_words << word
    end
  end
  return short_words.join(" ")
end

def bulk_tweet_shortener (tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
    end
  end

def selective_tweet_shortener(selective_tweet)
  if selective_tweet.length > 140
    word_substituter(selective_tweet)
  else
    return selective_tweet
  end
end

def shortened_tweet_truncator(short_tweet)
  modified_tweet = selective_tweet_shortener(short_tweet)
  if modified_tweet.length > 140
    return "#{modified_tweet[0..136]}..."
  else
    return modified_tweet
  end
end
