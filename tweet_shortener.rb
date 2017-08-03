# Write your code here.

def dictionary(word)

  dic = {
    "hello" => 'hi',
    "to" => '2', "two" => '2', "too" => '2',
    "for" => '4', "four" => '4', "For" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }

  array = dic.keys
  array.each do |elem|
    if elem == word
      return dic[word]
    end
  end

  return nil

end


def word_substituter(tweet)

  newArray = []
  array = tweet.split(" ")
  array.collect do |word|
    newWord = dictionary(word)
    if newWord != nil
      newArray.push(newWord)
    else
      newArray.push(word)
    end
  end

  str = newArray.join(" ")
  return str
end

def bulk_tweet_shortener(array_tweets)

  array_tweets.collect do |tweet|
    puts word_substituter(tweet)
  end

end


def selective_tweet_shortener(tweet)

  if tweet.length > 140
    return word_substituter(tweet)
  end

  return tweet
end


def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    newTweet = word_substituter(tweet)
    if newTweet.length > 140
      finalTweet = newTweet[0..136]
      finalTweet += "..."
      return finalTweet
    else
      return newTweet
    end
  else
    return tweet
  end

end
