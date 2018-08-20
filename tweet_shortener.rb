def dictionary
  dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split
tweet_array.each_with_index do |string, index|
  dictionary.each_key do |word|
    tweet_array[index].gsub!(word,dictionary[word]) if string == word || string == word.capitalize
  end
end
  tweet_array.join(" ")
end
    
def bulk_tweet_shortener(tweets)
  tweets.each do |input|
    puts word_substituter(input)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
   edited_tweet = bulk_tweet_shortener(tweet.split)
   edited_tweet
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    edited_tweet = selective_tweet_shortener(tweet)
    joined_tweet = edited_tweet.join(" ")
      if joined_tweet.length > 140
        final_tweet = "#{joined_tweet[0..136]}..."
        final_tweet
      else
        joined_tweet
      end
  else
    tweet
  end
end