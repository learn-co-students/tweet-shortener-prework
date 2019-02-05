def dictionary 
  dictionary = {"hello" => "hi", "to"=>'2', 'two'=>'2', "too" => '2', 'for'=>'4','four' => '4', 'you' => 'u', 'at' => '@', 'and' => '&','be'=>'b'}
end
def word_substituter(tweet)
   substitutes = dictionary
  og_words = tweet.split
    og_words.collect! do |word|
      lowercased = word.downcase
      if substitutes.keys.include? lowercased
        substitutes[lowercased]
      else
        word
      end
    end
  result = og_words.join(" ")
  result
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

 def selective_tweet_shortener(tweet)
  (tweet.size > 140)? word_substituter(tweet) : tweet
end

 def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  truncated_tweet = ""
  if shortened_tweet.size>140
    truncated_tweet = shortened_tweet[0..139]
  else
    truncated_tweet = shortened_tweet
  end
  truncated_tweet

 end