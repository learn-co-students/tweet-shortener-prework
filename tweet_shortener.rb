# Write your code here.
def dictionary
  substitute_words = {
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
  split_words = tweet.split(" ")
  substitute_words = dictionary
  substitute_words.each { |original_word, substitute|
    split_words.each_with_index { |word, index|
      if word.downcase == original_word
        split_words[index] = substitute
      end
    }
  }
  split_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map { |tweet|
    shorter_tweet = word_substituter(tweet)
    puts shorter_tweet
  }
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    shorter_tweet = word_substituter(tweet)
    return shorter_tweet
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    return tweet[0...140]
  else
    return tweet
  end
end
