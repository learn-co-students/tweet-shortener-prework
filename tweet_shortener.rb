# Write your code here.
def dictionary
  myDictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  myDictionary = dictionary
  originalWords = myDictionary.keys
  originalWords.collect! { |word| word.to_s }
  tweetArray = tweet.split(' ')
  temp = []
  tweetArray.each_with_index do |word, i|
    if originalWords.find_index(word.downcase)
      tweetArray[i] = myDictionary[word.downcase]
    end
  end
  finalTweet = tweetArray.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  newTweet = word_substituter(tweet)
  if newTweet.length > 140
    return newTweet = newTweet[0..136] + "..."
  else
    return newTweet
  end
end
