def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  return dictionary
end


def word_substituter(tweet)
  tweet_array = tweet.split(' ')
  output_array = [];
  for word in tweet_array do
    mod_word = word.downcase
   if dictionary.key?(mod_word)
      word = dictionary[mod_word]
   end
   output_array << word
  end
  output = output_array.join(' ')
  return output
end

def bulk_tweet_shortener(tweets)
  tweets.each do | tweet |
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    truncate_tweet = shortened_tweet.slice!(0, 137) << "..."
  else
    return shortened_tweet
  end
end
