def dictionary
  {
    "hello" => "hi",
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&',
  }
end

def word_substituter(str)
  arr = str.split(' ')
  i = 0
  while i < arr.length
    j = 0
    while j < dictionary.keys.length
      if arr[i].downcase == dictionary.keys[j]
        arr[i] = dictionary[dictionary.keys[j]]
      end
      j += 1
    end
    i += 1
  end
  arr.join(' ')
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
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
    tweet[0...137] << "..."
  else
    tweet
  end
end
