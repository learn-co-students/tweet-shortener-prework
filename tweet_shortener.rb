def dictionary
  words = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "four" => "4", "for" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end

def word_substituter(string)
  new_tweet = []
  string.split.each do |word|
    if dictionary.keys.include?(word.downcase)
      new_tweet << dictionary[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(' ')
end

def bulk_tweet_shortener (array)
  array.each do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener (string)
    if string.length > 140
      word_substituter(string)
    else string
  end
end

def shortened_tweet_truncator (string)
  if word_substituter(string).length > 140
    word_substituter(string)[0..136] + '...'
  else
    word_substituter(string)
  end
end