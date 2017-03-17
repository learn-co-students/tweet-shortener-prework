# Write your code here.
def dictionary
  {
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

def word_substituter(long_tweet)
  tweet = long_tweet.split(" ")
  tweet.each_with_index do |word, index|
    dictionary.each do |key, key_sub|
      if key == word || key.capitalize == word
        tweet[index] = key_sub
      end
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweet_arr)
  tweet_arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  shortened.length > 140 ? shortened[0..136] + "..." : shortened
end
