require 'pry'


def dictionary

  hash = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" =>  "u",
  "at" => "@",
  "and" => "&"}
end




def word_substituter(string)
  array = string.split
  array.map do |word|
    dictionary.each do |word1, replacement|
      if word.downcase == word1.downcase
        word.replace(replacement)
      end
    end
  end
  array.join(" ")
end


# def bulk_tweet_shortener(array)
#   array.each do |tweet|
#     tweet1 = word_substituter(tweet)
#     puts "#{tweet1}"
#   end
# end

# def bulk_tweet_shortener(tweets)
#   tweets.each do |tweet|
#     tweet = word_substituter(tweet)
#     puts "#{tweet}"
#   end
# end

def bulk_tweet_shortener(array)
  array.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    tweet = tweet
  elsif tweet.length > 140
    tweet = word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)
  if short.length > 140
    short_tweet = "#{short[0...140]}..."
  else
    tweet = tweet
  end
  short_tweet
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)
  if short.length > 140
    short = "#{short[0...140]}"
  end
  short
end
