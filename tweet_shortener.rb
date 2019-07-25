# Write your code here.

def dictionary(long_word)
  replacements = {
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
  replacements.key?(long_word.downcase) ? replacements[long_word.downcase] : long_word
end

def word_substituter(tweet)
  new_tweet = []
  tweet_array = tweet.split
  tweet_array.each do |item|
    new_tweet << dictionary(item)
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweets)
    if tweets.length > 140
      word_substituter(tweets)
    else
      tweets
    end
end

def shortened_tweet_truncator(tweet)
    selective_tweet_shortener(tweet)[0..139]
end