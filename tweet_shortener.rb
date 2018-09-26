# Write your code here.
def dictionary
  dictionary = {"hello" => "hi", "to" => "2", "too" => "2", "two" => "2", "for" =>"4", "four" => "4", "be" => "b",
                "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  keys = dictionary.keys
  new_tweet = []
  tweet.each do |word|
    count = 0
    keys.each do |value|
      if(word.downcase == value)
        count += 1
        new_tweet << dictionary[value]
      end
    end
    if(count == 0)
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if(tweet.length > 140)
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if(word_substituter(tweet).length > 140)
    word_substituter(tweet)[0...140]
  else
    word_substituter(tweet)
  end
end
