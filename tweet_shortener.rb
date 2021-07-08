def dic_tionary
  dictionary = {
      "hello" => "hi",
      "to" => "2",
      "too" => "2",
      "two" => "2",
      "for" => "4",
      "four" => "4",
      "be" => "b",
      "you" => "u",
      "at" => "@",
      "and" => "&",
    }
end

def word_substituter(tweet)
  bigBookHash = dic_tionary
  referenceArr = bigBookHash.keys
  wordsArr = tweet.split(" ")
  lowerWordsArr = []
  newTweet = []

  wordsArr.each do
    |word|
    lowWord = word.downcase
    if referenceArr.include?(lowWord)
      newTweet << bigBookHash[lowWord]
    else
      newTweet << word
    end
  end

  newTweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do
    |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if (tweet.length > 140)
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortTweet = selective_tweet_shortener(tweet)
  if shortTweet.length > 140
    tweet.slice(0..135) + " ..."
  else
    tweet
  end
end
