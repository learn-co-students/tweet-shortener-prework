# Write your code here.
def dictionary
  subs = {"hello" => "hi",
          "to" => "2",
          "two" => "2",
          "too" => "2",
          "for" => "4",
          "four" => "4",
          "be" => "b",
          "you" => "u",
          "at" => "@",
          "and" => "&"}
end

def word_substituter(tweet)
  words = tweet.split(" ")
  words.each do |word|
    if dictionary.keys.include?(word.downcase)
      while words.index(word) != nil
        words[words.index(word)] = dictionary[word.downcase]
      end
    end
  end
  words.join(" ")
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
  shorter = selective_tweet_shortener(tweet)
  if shorter.length > 140
    out = shorter[0..136] << "..."
  else
    out = shorter
  end
end