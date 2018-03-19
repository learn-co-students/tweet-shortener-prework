# Write your code here.
# "hello" becomes 'hi'
# "to, two, too" become '2'
# "for, four" become '4'
# 'be' becomes 'b'
# 'you' becomes 'u'
# "at" becomes "@"
# "and" becomes "&"

def dictionary()
  substitutes = {
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
  contents = []

  tweet.split(" ").each do |word|
    if dictionary().keys().include?(word.downcase())
      contents.push(dictionary()[word.downcase()])
    else
      contents.push(word)
    end
  end

  contents.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)

  new_tweet.length > 140 ? new_tweet[0..139] : tweet
end
