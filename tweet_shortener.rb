require 'pry'
def dictionary
hash = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"

  }
end

def word_substituter(tweet)
  processed_tweet = tweet.split(" ").collect do |word|
    improved_word = word
    dictionary.each do |original_word, slang_word|
      if word == original_word
        improved_word = slang_word
      end
    end
    improved_word
  end
  processed_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.length < 140
      puts tweet
      return tweet
    else
      puts word_substituter(tweet)
      return word_substituter(tweet)
    end
tweet
end
def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[1..140]

  else
    return tweet
  end

end
