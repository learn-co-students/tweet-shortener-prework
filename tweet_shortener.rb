# Write your code here.
def word_substituter(words)
  dictionary = {"to" => "2", "be" => "b", "at" => "@", "you" => "u", "for" => "4", "and" => "&", "too" => "2", "For" => "4"}
  new_words = []
  word = words.split(" ")
    word.each do |x|
      if dictionary.has_key?(x)
        new_words << dictionary[x]
      else
        new_words << x
      end
    end
    new_words.join(" ")
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
   tweet.length > 140 ? tweet[0..139] : tweet
end

#[tweet_one, tweet_two, tweet_three, tweet_four, tweet_five]
