# Write your code here.
def dictionary(words)
  dictionary = {
    "hello" => "hi",
    "two" => "2", "to" => "2", "too" => "2",
    "for" => "4", "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  key_string = dictionary.keys
  word = words.downcase
  rpl_word = ""
  if key_string.include?(word) == true
    rpl_word = dictionary[word]
  else
    rpl_word = words
  end
  rpl_word
end

#print dictionary("hello")

def word_substituter(tweets)
  array = tweets.split(" ")
  new_tweet = []
  array.each do |word|
    new_tweet << dictionary(word)
  end
  new_tweet.join(" ")
end

#puts word_substituter("For real, you guys. For real.")

def bulk_tweet_shortener(array)
  array.collect do |tweet|
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
  new_tweet = ""
  new_tweet = word_substituter(tweet)
  until new_tweet.length <= 140
    new_tweet.slice!(-1)
  end
  if tweet.length > 140
    new_tweet.slice!(-3..-1)
    new_tweet << "..."
    new_tweet
  else
    tweet
  end
end
