# Write your code here.

def dictionary
  dictionary = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    :for => "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    :and => "&"
  }
end 

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  keys_array = dictionary.keys
  tweet_array.each.with_index do |word, index|
    i = 0
    while i < keys_array.length
      if word.downcase == keys_array[i].to_s
        tweet_array[index] = dictionary[keys_array[i]]
      end
    i += 1
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet if tweet.length <= 140
  word_substituter(tweet)
end

def shortened_tweet_truncator(tweet)
  return word_substituter(tweet) if word_substituter(tweet).length <= 140
  word_substituter(tweet)[0..139]
end









