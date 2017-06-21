def dictionary(word)
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  new_word = word.downcase
  if dictionary.keys.include?(new_word)
    word = dictionary[new_word]
  end
  word
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  tweet = tweet.map do |word|
    word = dictionary(word)
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(twit)
  twit.length > 140 ? word_substituter(twit) : twit
end

def shortened_tweet_truncator(twet)
  if twet.length > 140
    twet[137..twet.length-1] = "..."
    twet
  else
    twet
  end
end
