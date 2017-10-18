# Write your code here.


def word_substituter(tweet)
  swap_words = {
  'hello' => 'hi',
  'to' => '2',
  'two' => '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
  }

  to_shorten = swap_words.keys
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word, i|
    to_shorten.each do |check_word|
      if word.downcase == check_word
        tweet_array[i] = swap_words[check_word]
      end
    end
  end
  tweet_array.join(" ")
end


def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
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
  if tweet.length > 140
    truncated_tweet = tweet[1..137]
    truncated_tweet << "..."
  else
    tweet
  end
end
