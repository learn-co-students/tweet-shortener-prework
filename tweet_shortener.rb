def dictionary

  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end



def word_substituter(string)

  tweet_array = string.split(" ")
  shortened_tweet_array = []

  tweet_array.each do |word|
    if dictionary.include?(word.downcase)
      word = dictionary[word.downcase]
    end
    shortened_tweet_array << word
  end

  shortened_tweet_array.join(" ")

end



def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end



def selective_tweet_shortener(string)
  if string.length > 140
    word_substituter(string)
  else
    string
  end
end



def shortened_tweet_truncator(string)
  truncated_string = nil
  if word_substituter(string).length > 140
    truncated_string = "#{word_substituter(string)[0..136]}..."
    truncated_string
  elsif word_substituter(string).length <= 140 && string.length > 140
    word_substituter(string)
  else
    string
  end
end
