def dictionary(str)

  dictionary = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }

  keys = dictionary.keys
  lowercase_str = str.downcase

  if keys.include? lowercase_str
    dictionary.each do |long, short|
      if long == lowercase_str
        return short
      end
    end
  else
    return str
  end
end

def word_substituter(tweet)
  shortened_tweet = []
  tweet_array = tweet.split(" ")

  tweet_array.each do |word|
    shortened_tweet << dictionary(word)
  end

  return shortened_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    truncated_tweet = "#{shortened_tweet[0..136]}..."
    return truncated_tweet
  else
    return shortened_tweet
  end
end
