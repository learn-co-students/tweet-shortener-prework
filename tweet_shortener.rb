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
  "and" => "&",
}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  dictionary.each do |key, replacement|
    tweet_array.each do |word|
      if word.downcase == key
        word.replace replacement
      end
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |each_word_from_array|
    puts word_substituter(each_word_from_array)
  end
end

def selective_tweet_shortener(selected_tweet)
  if selected_tweet.size > 140
    word_substituter(selected_tweet)
  else selected_tweet
  end
end
  
def shortened_tweet_truncator(tweet_to_shorten)
  shortened_tweet = word_substituter(tweet_to_shorten)
  if shortened_tweet.size > 140
    "#{shortened_tweet[0..136]}..."
  else shortened_tweet
  end
end
    
    
  
  
  
  