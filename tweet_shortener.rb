# Write your code here.
def dictionary
  #all substitutes must be done individually
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
    "and" => "&"
  }
end
#Write a method, word_substituter that takes in a string
#of a tweet as an argument and shortens that string
#based on the allowed substitutes
def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end
#takes in an array of tweets,
#iterates over them, shortens them,
#and puts out the results to the screen
def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
      puts word_substituter(tweet)
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
  if tweet.length < 140
    tweet
  else
    word_substituter(tweet)[0...140]
  end

end
