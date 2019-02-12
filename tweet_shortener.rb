
def dictionary(compare)

  compare_array = compare.split
  change_words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  compare_array.each_with_index do |list, i|
    change_words.each do |key, value|
      if list.downcase == key
        compare_array[i] = value
      end
    end
  end
  compare_array.join(" ")
end

def word_substituter(tweet)
  dictionary(tweet)
end

def bulk_tweet_shortener(array)
  array.each do |item|
    puts word_substituter(item)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    dictionary(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)

  if tweet.length > 140
    shortened_tweet = dictionary(tweet)

    if shortened_tweet.length > 140
      final_tweet = shortened_tweet[0...137] + "..."
      final_tweet
    end
  else
    tweet
  end

end
