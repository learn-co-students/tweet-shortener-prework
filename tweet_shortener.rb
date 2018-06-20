def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  words = tweet.split
  new_words = words.collect { |word|
    if dictionary[word.downcase]
      word = dictionary[word.downcase]
    end
    word
  }
  new_words.join(" ")
end

# def word_substituter(tweet)
#   words = tweet.split
#   i = 0
#   while i < words.length
#     word = words[i]
#     if dictionary[word.downcase]
#       words[i] = dictionary[word.downcase]
#     end
#     i += 1
#   end
#   words.join(" ")
# end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet[0..139]
end

