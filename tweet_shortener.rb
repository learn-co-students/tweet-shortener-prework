# Write your code here.
def dictionary
  {"hello" => "hi",
    "two" => "2",
    "to" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "four" => "4",
    "for" => "4"
  }
end

def word_substituter(string)
  new_words = []
  words = string.split(' ')
  words.each do |word|
    if dictionary[word.downcase] != nil
      word = dictionary[word.downcase]
      new_words << word
    else
      new_words << word
    end
  end
  return new_words.join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length >= 140 ? bulk_tweet_shortener([tweet]) : tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length >= 140
    tweet = tweet.slice(0..136) << "..."
  else
    tweet
  end
end
    
    