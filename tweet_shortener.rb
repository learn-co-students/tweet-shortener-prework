# Write your code here.

def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    'be' => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)
#1 convert tweet to array so you can work on it
  tweet_array = tweet.split(" ")

#2 iterate through each of the replacement words for you to search for it in the tweet
  dictionary.keys.each do |key|
#3 iterate through each of the tweet words to see match. use map! so it replaces it if there is a match
    tweet_array.map! {|word| word.downcase == key ? dictionary[key] : word}
  end
#4 call for the tweet in sentence format and not array
  tweet_array.join(" ")

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
  replace = word_substituter(tweet)
  if replace.length > 140
    #.. counts the last 140 character which = 141 characters.
    #... removes the last [140] index to make it equal 140 because 0 is counted as 1
    replace[0...140]
  else
    tweet
  end
end
