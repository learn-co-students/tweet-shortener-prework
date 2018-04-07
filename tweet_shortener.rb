def word_substituter(tweet)
  subs = {
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
    "and"=> "&"
  }

  array = tweet.split
  new_array = []

  array.collect do |word|
    if subs.include?(word)
      new_array.push(subs[word])
    else
      new_array.push(word)
    end
  end

  array = new_array.join(" ")

end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = word_substituter(tweet)
    if tweet.length > 140
      tweet = tweet[0..136] + "..."
    else
      tweet
    end
  else
    tweet
  end
end
