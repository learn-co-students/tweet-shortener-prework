# Write your code here.
def dictionary
  dictionary = {
    hello: "hi",
    to: "2",
    two: "2",
    too: "2",
    for: "4",
    four: "4",
    be: "b",
    you: "u",
    at: "@",
    and: "&"
  }
end

def word_substituter(tweet)
  #convert the tweet to an array
  tweet_array = tweet.split
  #iterate through the array and compare against our dictionary
  new_tweet_array = tweet_array.collect do |source_word|
    if dictionary.keys.include?(source_word.downcase.to_sym)
      source_word = dictionary[source_word.downcase.to_sym]
    else
      source_word
    end
  end
  # puts dictionary.keys.to_s.include?("hello")
  new_tweet_array.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length >= 140
    #delete all chars after 137, add ellipsis
    tweet[0..136] << "..."
  else
    tweet
  end
end

#TESTING
# tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
# tweet = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
# puts word_substituter(tweet)
