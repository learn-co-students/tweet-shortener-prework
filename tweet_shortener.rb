# Write your code here.
def word_substituter (tweet)
  list_of_words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4",
                   "For" => "4" ,"be" => "b", "you" => "u", "at" => "@", "and" => "&"}

  tweet.split(/\b/).collect do |short|
    list_of_words[short] ? list_of_words[short] : short
  end.join
end


def bulk_tweet_shortener(tweets)
   tweets.each {|tweet| puts word_substituter(tweet)}
end


def shortened_tweet_truncator(tweet)
  x = tweet.length > 140 ? tweet[0...137] + "..." : tweet
end

def selective_tweet_shortener(tweet)
  shortened_tweet_truncator(tweet)
end
