# Write your code here.
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
  result = []
  tweet.split(" ").map do |word|
    DICTIONARY.include?(word.downcase) ? result << DICTIONARY[word.downcase] : result << word
  end
  result.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet if tweet.length <= 140
  word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shortened_tweet_truncator = word_substituter(tweet)
    if shortened_tweet_truncator.length > 140
      return shortened_tweet_truncator[0..136] + "..."
    end
  else
    return tweet
  end
end
