# Write your code here.
def word_substituter(string)
  array = string.split(" ")
  newArray = array.map do |word|
    case word
    when "hello"
      word = "hi"
    when "to"
      word = "2"
    when "two"
      word = "2"
    when "too"
      word = "2"
    when "for"
      word = "4"
    when "For"
      word = "4"
    when "four"
      word = "4"
    when "Four"
      word = "4"
    when "be"
      word = "b"
    when "you"
      word = "u"
    when "at"
      word = "@"
    when "and"
      word = "&"
    else
      word
    end
  end
  newArray.join(" ")
end

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
  if tweet.length > 140
    "#{tweet[0..139]}"
  else
    tweet
  end
end
