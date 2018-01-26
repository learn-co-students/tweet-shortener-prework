
DICTIONARY = {
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

def word_substituter(tweet)
  array = tweet.split(" ")
  new_tweet = array.collect do |word|
    clean_word = word.gsub(/[!@#$%^&*()-=_+|;':",.<>?']/, '').downcase
    if DICTIONARY.keys.include?(clean_word)
      DICTIONARY[clean_word]
    else
      word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
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
    tweet[137..tweet.length] = "..."
  end
    tweet
end
