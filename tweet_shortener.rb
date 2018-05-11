require "pry"
# Write your code here.
def dictionary
  { "hello" => "hi",
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
  words = tweet.split(" ")
  counter = 0
  result = words.each { |word|
    dictionary.each do |entry, value|
      entry.upcase == word.upcase ? (words[counter] = value) : nil
    end
    counter += 1
  }
  words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    substituted = word_substituter(tweet)
    puts substituted
    substituted
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  tweet.length > 140 ? "#{tweet[0...137]}..." : tweet
end
