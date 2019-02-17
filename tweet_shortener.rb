# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four" => "4",
    'be' => "b",
    'you' => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  dictionary_array = dictionary.keys

  tweet_array.each_with_index do |word, i|
    if dictionary_array.include?(word)
      tweet_array[i] = dictionary[word]
    end
  end
  tweet = tweet_array.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.split("").length > 140
    word_substituter(tweet)
  elsif tweet.split("").length < 130
    tweet
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[1..140]
  else
    return tweet
  end
end
