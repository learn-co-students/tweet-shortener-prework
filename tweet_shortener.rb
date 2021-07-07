# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def word_substituter(tweets)
i = 0
tweetarray = tweets.split
  until i == tweetarray.length
    lowercase = tweetarray[i].downcase
      if dictionary[lowercase]
        tweetarray[i].replace(dictionary[lowercase])
      end
  i+=1
  end
  tweetarray.join(" ")
end

def bulk_tweet_shortener(tweets)
i = 0
  while i < tweets.length
    puts word_substituter(tweets[i])
    i += 1
  end
end

def selective_tweet_shortener(tweets)
twitter_limit=140
  if tweets.length > twitter_limit
    word_substituter(tweets)
  else
    tweets
  end
end

def shortened_tweet_truncator(tweets)
shorter_tweet = word_substituter(tweets)
twitter_limit=140
  if shorter_tweet.length > twitter_limit
    even_shorter_tweet = shorter_tweet[0..139]
  else
    return tweets
  end
end
