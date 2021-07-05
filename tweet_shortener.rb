def dictionary
dict =   {"too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
  
end

def word_substituter (string)
  arString = string.split(" ")
  arKeys = dictionary.keys
  for x in 0...arString.length
  currentWord = arString[x]
  for y in 0...arKeys.length
  if arKeys[y] == currentWord.downcase
    arString[x] = dictionary[arKeys[y]]
  end
end

end
 answer =  arString.join(" ")
 answer
end

def bulk_tweet_shortener(array)
  for x in 0...array.length
  puts word_substituter(array[x])
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
subTweet = word_substituter(tweet)

if subTweet.length>140
  answer = subTweet[0..136]
  a2 = answer + "..."
else
  a2 = tweet
end
a2
end


