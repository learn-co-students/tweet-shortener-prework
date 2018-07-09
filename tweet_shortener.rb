# Write your code here.

def dictionary
   dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "four" => "4",
    "for" => "4",
  }
end

def word_substituter(tweet)
  tweet = tweet.split
  dictionary.each do |oringial, replacement|
    tweet = tweet.collect do |word|
      if word.downcase == oringial
        word = replacement
      else
        word
      end
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |index|
    puts word_substituter(index)
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
    text = word_substituter(tweet)
    if text.length > 140
      return text[0..136] + "..."
      else
        text
      end
    end
    tweet
end
