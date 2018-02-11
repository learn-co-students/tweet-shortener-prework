def dictionary
  dictionary = {
    "hello"=>"hi",
    "to"=>"2",
    "two"=>"2",
    "too"=>"2",
    "for"=>"4",
    "four"=>"4",
    "be"=>"b",
    "you"=>"u",
    "at"=>"@",
    "and"=>"&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  new_tweet = []

  dictionary_keys = dictionary.keys

  tweet_array.each do |word|
    if dictionary_keys.include?(word.downcase)
      dictionary.each do |key, value|
        if word.downcase == key
          new_tweet << value
        end
      end
    else new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  # if tweet.length > 140
  #   word_substituter(tweet)
  # else tweet
  # end
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  short_tweet = word_substituter(tweet)
  short_tweet.length >= 140 ? short_tweet[0..134] << "(...)" : short_tweet
end
