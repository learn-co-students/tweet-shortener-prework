def dictionary
  words_to_be_substituted = {
    "hello" => "hi",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4"
  }
end

def word_substituter(tweet)
  substitutes = dictionary
  original_words = tweet.split
    original_words.collect! do |word|
      lowercased = word.downcase
      if substitutes.keys.include? lowercased
        substitutes[lowercased]
      else
        word
      end
    end
  result = original_words.join(" ")
  result
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  (tweet.size > 140)? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  truncated_tweet = ""
  if shortened_tweet.size>140
    truncated_tweet = shortened_tweet[0..139]
  else
    truncated_tweet = shortened_tweet
  end
  truncated_tweet

end
