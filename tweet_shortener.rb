def word_substituter(tweet)
  word_replacements = {
    "hello" => 'hi',
    "to" => '2',
    "two" => "2",
    "too" => "2",
    "for" => '4',
    "four" => "4",
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&"
  }

  words = tweet.split(" ")
  subbed_words = words.collect do |word|
    word_replacements[word.downcase] ? word_replacements[word.downcase] : word
  end
  subbed_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? tweet[0..136] + "..." : tweet
end
