def dictionary
  {"hello" => "Hi",
  "to" => "2",
  "too" => "2",
  "two" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  array = tweet.split
  long = dictionary.keys
  array.each do |word|
   long.each do |rep|
       if (rep == word || rep.capitalize == word)
           word.replace(dictionary[rep])
       end
   end
  end
  tweet = array.join(" ")
  return tweet
end

def bulk_tweet_shortener(tweets)
  tweets.each do |subs|
    puts word_substituter(subs)
  end
end

def selective_tweet_shortener(tweet)
  if (tweet.length > 140)
    tweet = word_substituter(tweet)
  end
  return tweet
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = tweet[0..136]
    tweet += "..."
  end
  return tweet
end
