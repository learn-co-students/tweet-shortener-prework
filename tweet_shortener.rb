# Write your code here.
def dictionary
  dictionary = {
    "hello" => 'hi',
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

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  dictionary_keys = dictionary.keys
  i = 0
  tweet_array.map do |word|
  dictionary_keys.map do |key|
  if word.downcase == key
  tweet_array[i] = dictionary[key]
  end
  end
  i = i + 1
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
 tweets.each do |tweet|
 puts word_substituter(tweet)
 end
 end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
  return word_substituter(tweet)
  end
  if tweet.length < 140
  return tweet
  end
end

def shortened_tweet_truncator(tweet)
 tweet_edit = word_substituter(tweet)
 tweet_arr = tweet_edit.split("")
 if tweet_edit.length < 140
 return tweet_edit
 end
 if tweet_arr.length > 140
 i = tweet_arr.length
 while i > 140 do
 tweet_arr.pop
 i = i - 1
 end
 tweet_arr[137..140] = "..."
 end
 return tweet_arr.join("")
end
