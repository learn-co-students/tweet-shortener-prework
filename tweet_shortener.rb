def dictionary
  dictionary = { "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&" }
end

def word_substituter(tweet)
  new_tweet = tweet.split
  new_tweet.each_with_index do |tweet_word, index|
    dictionary.each do |word, shortened_word|
      if tweet_word.downcase == word
        new_tweet[index] = shortened_word
      end
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts "#{tweet}"
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
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet[0...137] + "..."
  else
    tweet
  end
end
  
  