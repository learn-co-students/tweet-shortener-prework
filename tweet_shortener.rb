require "pry"

def dictionary
  dictionary = {"hello" => "hi",
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

def word_substituter(tweet)
  tweetArray = tweet.split
# shortTweetArray = []
#  wordsLong = dictionary.keys
#  wordsShort = dictionary.values
  i = 0
  until i == tweetArray.length
    lowercase = tweetArray[i].downcase
      if dictionary[lowercase]  #wordsLong.include?(tweetArray[i].downcase)
        tweetArray[i].replace(dictionary[lowercase])
        #shortTweetArray = tweetArray
    end
    i += 1
  end
  tweetArray.join(" ")
end


def bulk_tweet_shortener(tweets)
  i = 0
  until i == tweets.length
    puts word_substituter(tweets[i])
    i += 1
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
  shortTweet = word_substituter(tweet)
  if tweet.length < 140
    return tweet
  elsif shortTweet.length > 140
    reallyShortTweet = shortTweet[0..139]
  end
end
