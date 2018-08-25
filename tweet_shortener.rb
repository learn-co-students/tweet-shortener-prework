def dictionary
  {
  "hello" => "hi",
  "to" => "2", "two" => "2", "too" => "2",
  "for" => "4", "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(string)
  tweet_array = []

  string.split(" ").each do |word|
  if dictionary.keys.include?(word.downcase)

  tweet_array.push(dictionary[word.downcase])
    else
      tweet_array.push(word)
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |short|
    puts word_substituter(short)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else string
  end
end

def shortened_tweet_truncator(string)
  if string.length > 140
    string[0..136] + "..."
  else string
  end
end
