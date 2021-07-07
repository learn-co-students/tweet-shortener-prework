def dictionary
    dictionary = {
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

def word_substituter(tweet_string)
  string = tweet_string.split
  string.each do |word|
    dictionary.keys.each do |sub|
      if word == sub || word == sub.capitalize
        word.replace(dictionary[sub])
      end
    end
  end
  string.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweet_string)
  if tweet_string.size > 140
    word_substituter(tweet_string)
  else
    tweet_string
  end
end

def shortened_tweet_truncator(shortened_tweet)
  if shortened_tweet.size > 140
    "#{shortened_tweet[0..136]}..."
  else
    shortened_tweet
  end
end
