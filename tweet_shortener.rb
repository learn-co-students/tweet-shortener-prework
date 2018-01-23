def dictionary
  {"hello" => 'hi',
  "to" => '2', "two" => '2', "too" => '2',
  "for" => '4', "four" => '4',
  "be" => 'b',
  "you" => 'u',
  "at" => '@',
  "and" => "&"}
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  dict = dictionary
  tweet.each_with_index do |word, index|
    if dict.keys.include?(word.downcase)
      tweet[index] = dict[word.downcase]
    end
  end

  tweet.join(" ")

end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size < 140
    return tweet
  else
    return word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).size > 140
    tweet[0..136] + "..."
  else
    selective_tweet_shortener(tweet)
  end
end
