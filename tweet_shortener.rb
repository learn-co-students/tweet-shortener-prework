def dictionary
  tweets = {
    "hello"=> "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "For" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
    }
  end

def word_substituter(string)
  string.split.each do |word|
  if dictionary.keys.include?(word)
    dictionary.keys.map do |key|
      if key == word
        word.replace(dictionary[key])
      end
    end
  end
  end
  .join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |word|
    puts word_substituter(word)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).size > 140 
    tweet[0..136] + "..."
  else
    tweet
  end
end
