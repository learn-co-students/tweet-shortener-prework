require 'pry'

# Write your code here.
# "hello" becomes 'hi'
# "to, two, too" become '2'
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@"
# "and" becomes "&"
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
  "and" => "&"
}
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  dictionary.each do |orig_word, sub_word|
    tweet = tweet.map do |word|
      if word.downcase === orig_word
        word = sub_word
      else word = word
      end
    end
  end
  return tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  i = 0
  tweets.each do |tweet|
    puts word_substituter(tweet)
  i += 1
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
      return word_substituter(tweet)
    else
      return tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    new_tweet = word_substituter(tweet)
    if new_tweet.size > 140
      return new_tweet[0..139]
    else return new_tweet
    end
  else return tweet
  end
end
