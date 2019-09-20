# Write your code here.
def dictionary(word)
  dictionaryHash = {
    "hello" => "hi",
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

  lowerCaseWord = word.downcase()

  return dictionaryHash["#{lowerCaseWord}"]

end





def word_substituter(str)
  shortStr = ""
  shortStrArr = []

  str.split(" ").each{
    |word|

    if dictionary(word) != nil
      shortStrArr << dictionary(word)
    else
      shortStrArr << word
    end
  }

  shortStr = shortStrArr.join(" ")

  return shortStr

end





def bulk_tweet_shortener(arr)

  arr.each{
    |word|
    puts (word_substituter(word))
  }

end





def selective_tweet_shortener(tweet)

  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end

end





def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    shortenedTweet = word_substituter(tweet)

    if shortenedTweet.length > 140
      return shortenedTweet.slice(0..139)
    end

  else
    return tweet
  end


end
