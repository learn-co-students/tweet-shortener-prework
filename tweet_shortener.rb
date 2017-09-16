def dictionary
  {
  "hello" => "hi",
  "to" => '2',
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
  answer = tweet.split(" ").map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  answer.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet if tweet.length < 140
  word_substituter(tweet) if tweet.length > 140
end

def shortened_tweet_truncator(tweet)
  shortened = selective_tweet_shortener(tweet)
  shortened.length > 140 ? shortened[0...140] : shortened
end
