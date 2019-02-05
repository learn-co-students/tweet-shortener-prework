def dictionary
    return {
        hello: "hi",
        to: "2",
        too: "2",
        two: "2",
        for: "4",
        four: "4",
        be: "b",
        you: "u",
        at: "@",
        and: "&"
    }
end

def word_substituter(tweet)
    match_against = dictionary.keys.map { |key| key.to_s }
    words = tweet.split(" ")
    words.map { |word| match_against.include?(word.downcase) ? dictionary[word.downcase.to_sym] : word}.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each { |tweet| puts word_substituter(tweet) }
end
# Write a new method, selective_tweet_shortener, that only does the substitutions if the tweet is longer than 140 characters. If the tweet is 140 characters or shorter, just return the original tweet.

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  if(selective_tweet_shortener(tweet).length > 140)
    return selective_tweet_shortener(tweet)[0...140]
  else
    return selective_tweet_shortener(tweet)
  end
end